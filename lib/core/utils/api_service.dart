import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();
//post request
  Future<Response> post({
    required body,
    required String url,
    required String token,
    Map<String, String>? headers,
    String? contentType,
  }) async {
    var response = await dio.post(url,
        data: body,
        options: Options(
          contentType: contentType,
          //if it send heards i use headers if not i use this
          headers:headers ?? {'Authorization': "Bearer $token"},
        ));
    return response;
  }
}
