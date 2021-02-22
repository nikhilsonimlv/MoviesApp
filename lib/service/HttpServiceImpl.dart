import 'package:dio/dio.dart';
import 'package:dio/src/response.dart';
import 'package:fujitsu/service/http_service.dart';

class HttpServiceImpl implements HttpService {
  Dio _dio;
  final baseUrl = "http://api.themoviedb.org/";

  @override
  Future<Response> getData(String movUrl) async {
    Response response;
    try {
      response = await _dio.get(movUrl);
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  void init() {
    _dio = Dio(BaseOptions(baseUrl: baseUrl));
    intercepter();
  }

  intercepter() {
    _dio.interceptors.add(InterceptorsWrapper(onError: (error) {
      print(error.message);
    }, onResponse: (response) {
      print("${response.data}");
    }));
  }
}
