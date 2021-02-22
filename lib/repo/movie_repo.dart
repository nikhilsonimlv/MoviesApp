import 'package:fujitsu/model/Results.dart';

abstract class MovieRepo {
  Future<List<Results>> getMovList();
}
