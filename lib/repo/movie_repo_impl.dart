import 'package:fujitsu/model/Results.dart';
import 'package:get/get.dart';
import 'package:fujitsu/repo/movie_repo.dart';
import 'package:fujitsu/service/http_service.dart';
import 'package:fujitsu/service/HttpServiceImpl.dart';
import 'package:fujitsu/model/Movies.dart';

class MovRepoImpl implements MovieRepo {
  HttpService _httpService;

  MovRepoImpl() {
    _httpService = Get.put(HttpServiceImpl());
    _httpService.init();
  }

  @override
  Future<List<Results>> getMovList() async {
    try {
      final response = await _httpService
          .getData("3/movie/popular?api_key=959c3a135964e4032af16d2d12e571e7");
      final moviesList = Movie.fromJson(response.data);

      return moviesList.results;
    } on Exception catch (e) {
      print(e);
    }
  }
}
