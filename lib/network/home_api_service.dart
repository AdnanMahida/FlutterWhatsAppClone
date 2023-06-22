import 'package:dio/dio.dart';

import '../utils/constants.dart';

class Api {
  final dio = Dio(BaseOptions(baseUrl: apiBaseUrl));

  Future<dynamic> getHomeDetails() async {
    final response = await dio.get('/home');
    if (response.statusCode == 200) {
      return response.data;
    } else {
      return null;
    }
  }

  Future<dynamic> getHomeList({required int id}) async {
    final response = await dio.get('/home');
    if (response.statusCode == 200) {
      return response.data;
    } else {
      return null;
    }
  }
}
