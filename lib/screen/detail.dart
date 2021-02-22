import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fujitsu/model/Results.dart';
import 'dart:ui';

class MovieDetail extends StatelessWidget {
  final Results results;

  MovieDetail({@required this.results});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Get.theme.backgroundColor,
      body: SafeArea(
        child: Stack(fit: StackFit.expand, children: [
          Image.network(
              'http://image.tmdb.org/t/p/original' + results.posterPath,
              fit: BoxFit.cover),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 250.0,
                  width: 250.0,
                  child: Center(
                    child: Image.network(
                      'http://image.tmdb.org/t/p/original' + results.posterPath,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  results.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        results.overview,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Average Votes",
                            textAlign: TextAlign.left,
                            style:
                                TextStyle(color: Colors.white, fontSize: 25.0),
                          ),
                          Text('${results.voteAverage}/10',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0))
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Release date :-",
                            textAlign: TextAlign.left,
                            style:
                                TextStyle(color: Colors.white, fontSize: 25.0),
                          ),
                          Text('${results.releaseDate}',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0))
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Language :-",
                            textAlign: TextAlign.left,
                            style:
                                TextStyle(color: Colors.white, fontSize: 25.0),
                          ),
                          Text('${results.originalLanguage}',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0))
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
