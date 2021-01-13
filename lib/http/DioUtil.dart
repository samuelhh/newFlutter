// import 'dart:convert';
import 'dart:io';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import '../config/DioConfig.dart';
import '../utils/SharedUtil.dart';

/// dio统一封装
///
class DioUtil {
  /// 实例
  static DioUtil _instance;

  /// token前缀
  static const String _refreshTokenKey = 'Admin-Refresh-Token';

  /// token前缀2
  static const String _accessTokenKey = "Bearer ";

  /// 获取实例
  static DioUtil getInstance() {
    if (_instance == null) _instance = DioUtil();
    return _instance;
  }

  /// 默认配置
  Dio dio = Dio();
  DioUtil() {
    // 请求地址
    dio.options.baseUrl = DioConfig.baseUrl;
    // 超时时间
    dio.options.connectTimeout = 5000;
    // 接受数据超时时间
    dio.options.receiveTimeout = 3000;
    // 请求的Content-Type，默认值是[ContentType.json]. 也可以用("application/x-www-form-urlencoded")
    dio.options.contentType = Headers.formUrlEncodedContentType;
    //表示期望以那种格式(方式)接受响应数据。接受三种类型 `json`, `stream`, `plain`, `bytes`. 默认值是 `json`,
    dio.options.responseType = ResponseType.json;
    // 打印日志
    dio.interceptors.add(LogInterceptor(responseBody: DioConfig.isDebug));
    // SSL证书策略
    noSSl();
  }

  /// get请求方法
  get(String url,
      {Map<String, dynamic> params, Function success, Function error}) {
    _requestHttp(url, success, 'get', params, error);
  }

  /// post请求方法
  post(String url,
      {Map<String, dynamic> params, Function success, Function error}) {
    _requestHttp(url, success, 'post', params, error);
  }

  // 请求
  _requestHttp(String url, Function successCallBack,
      [String method,
      Map<String, dynamic> params,
      Function errorCallBack]) async {
    // 从本地缓存拿到两个token
    String accessToken = await SharedUtil.getValue('access_tokenKey');
    String refreshToken = await SharedUtil.getValue('refresh_token');
    // 设置Http请求头
    dio.options.headers = {
      "token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MTA2MTY2OTYsInVzZXIiOiJ7XCJpZkRpc2FibGVcIjowLFwib3JnSWRcIjo1NDY3NjI1NjkwNTk0MTQwMTYsXCJvcmdOYW1lXCI6XCLpn6nlvI_pm4blm6JcIixcInJvbGVDb2RlXCI6XCJzdXBlcl90ZWFjaGVyXCIsXCJ1c2VyQ29kZVwiOlwiaGFuVGVhY2hlclwiLFwidXNlcklkXCI6NTQ2NzYyNTY5NzA1MzM2ODMyLFwidXNlckltZ1wiOlwiXCIsXCJ1c2VyTmFtZVwiOlwi6Z-p5bCP5aeQXCIsXCJ1c2VyVHlwZVwiOjF9In0.ICD3KfM9lZPccvl5kYgqWfPh2UJfzikArJY4XjDGJuI",
      // "authorization": _accessTokenKey + accessToken,
      // "Cookie": _refreshTokenKey + refreshToken,
    };
    Response response;

    /// 发起请求
    try {
      // get请求
      if (method == 'get') {
        if (params != null && params.isNotEmpty) {
          response = await dio.get(url, queryParameters: params);
        } else {
          response = await dio.get(url);
        }
      }
      // post请求
      else if (method == 'post') {
        if (params != null && params.isNotEmpty) {
          response = await dio.post(url, data: params);
        } else {
          response = await dio.post(url);
        }
      }
    }

    /// 请求错误处理
    on DioError catch (error) {
      // 错误类型
      String msg = error.message;
      if (error.type == DioErrorType.CANCEL)
        msg = "连接被取消";
      else if (error.type == DioErrorType.CONNECT_TIMEOUT)
        msg = "请求时超时";
      else if (error.type == DioErrorType.SEND_TIMEOUT)
        msg = "连接超时";
      else if (error.type == DioErrorType.RECEIVE_TIMEOUT) msg = "接收超时";
      if (errorCallBack != null) _error(errorCallBack, msg);
      return;
    }

    /// 根据服务器响应结果进行处理（可根据返回状态码处理）
    // String strData = json.encode(response.data['data']); // 转json字符串
    // Map<String, dynamic> dataMap = json.decode(strData); // 转map（json）
    Map<String, dynamic> dataMap = response.data;
    if (dataMap == null || dataMap['code'] == null)
      _error(errorCallBack, "返回参数异常");
    else if (dataMap['code'] == 401)
      _error(errorCallBack, "没有权限");
    else
      successCallBack(dataMap);
  }

  // 是否忽略SSL证书
  noSSl() {
    if (DioConfig.noSSL)
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) {
          return true;
        };
      };
  }

  // 错误处理
  _error(Function errorCallBack, String msg) {
    errorCallBack(msg);
  }
}
