import 'package:dio/dio.dart';

abstract class HttpService {
  void init();
  Future<Response> getData(String movUrl);
}
