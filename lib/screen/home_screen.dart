import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fujitsu/controller/homeController.dart';
import 'package:fujitsu/screen/detail.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Fujitsu Movies"),
      ),
      body: Obx(() {
        return controller.isLoad.isTrue
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Visibility(
                visible:
                    controller.results != null && controller.results.length > 0,
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(4.0),
                  childAspectRatio: 6.0 / 9.0,
                  children: List.generate(controller.results.length, (index) {
                    return InkWell(
                      onTap: () => Get.to(MovieDetail(
                        results: controller.results[index],
                      )),
                      child: Center(
                        child: Image.network(
                            'http://image.tmdb.org/t/p/original' +
                                controller.results[index].posterPath),
                      ),
                    );
                  }),
                ),
              );
      }),
    );
  }
}
