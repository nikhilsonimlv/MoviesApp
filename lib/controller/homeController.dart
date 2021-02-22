import 'package:get/get.dart';
import 'package:fujitsu/repo/movie_repo_impl.dart';
import 'package:fujitsu/repo/movie_repo.dart';
import 'package:fujitsu/model/Results.dart';

class HomeController extends GetxController {
  MovieRepo _movieRepo;

  HomeController() {
    _movieRepo = Get.find<MovRepoImpl>();
    intialLaunchMovies();
  }

  RxBool isLoad = false.obs;

  RxList<Results> results;

  intialLaunchMovies() async {
    showLoading();

    final result = await _movieRepo.getMovList();

    hideLoading();

    if (result != null) {
      results = result.obs;
    } else {
      print("No data recieved");
    }
  }

  showLoading() {
    isLoad.toggle();
  }

  hideLoading() {
    isLoad.toggle();
  }
}
