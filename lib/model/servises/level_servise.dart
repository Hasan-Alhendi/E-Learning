import 'package:e_learning/model/classes/level.dart';
import 'package:dio/dio.dart';

class LevelService {
  static Future<List<Level>> fetchLevels() async {
    final response =
        await Dio().get('http://192.168.1.113:8000/api/class/show');
    //if(response.statusCode=200)

    List jsonData = response.data;

    final List<Level> loadedLevels = [];

    for (var item in jsonData) {
      loadedLevels.add(Level.fromJson(item));
    }
    return loadedLevels;
  }
}
