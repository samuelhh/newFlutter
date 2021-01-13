/// 请求统一请求的配置

class DioConfig {
  /// 是否打印请求日志
  static const bool isDebug = false;

  /// 忽略证书
  static const bool noSSL = true;

  /// 请求地址
  static const String baseUrl = "http://172.16.37.99:8006";
}