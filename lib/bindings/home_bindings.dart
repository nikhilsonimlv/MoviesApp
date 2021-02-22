import 'package:get/get.dart';
import 'package:fujitsu/repo/movie_repo_impl.dart';
import 'package:fujitsu/controller/homeController.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MovRepoImpl());
    Get.put(HomeController());
  }
}
