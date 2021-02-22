import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fujitsu/screen/home_screen.dart';
import 'package:fujitsu/bindings/home_bindings.dart';

void main() {
  runApp(Fujitsu());
}

class Fujitsu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: [
        GetPage(
            name: "/fujitsu_movies",
            page: () => HomeScreen(),
            binding: HomeBinding()),
      ],
      initialRoute: "/fujitsu_movies",
    );
  }
}
