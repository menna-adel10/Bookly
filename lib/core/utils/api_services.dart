import 'package:dio/dio.dart';

class ApiServices {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  late final Dio dio;

  ApiServices(this.dio);

  Future<Map<dynamic, String>> get({required String endPoint}) async {
    var response = await dio.get('$_baseUrl$endPoint');

    return response.data;
  }
}
