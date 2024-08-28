
import 'package:dio/dio.dart';

class HttpRequest {
  static Future request(String url, {String method = "get", required Map<String, dynamic> params}) async{
    BaseOptions base = BaseOptions(
      baseUrl: "https://douban.uieee.com/v2",
      connectTimeout: const Duration(seconds: 30)
    );

    final dio = Dio(base);

    // 发送网络请求
    try {
      Options options = Options(method: method);
      final result = await dio.request(url,queryParameters: params, options: options);
      print("我来了");
      return result;
    } on Exception catch(err) {
      print("报错了");
      throw err;
    }
  }
}