import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_task/di/locator.dart';

class ApiClient {
  ApiClient();

  static final SharedPreferences prefs = getIt<SharedPreferences>();
  static final dio = Dio(
    BaseOptions(
      baseUrl: 'https://hcateringback-dev.unitbeandev.com/api/',
      responseType: ResponseType.json,
    ),
  );

  static Future<Response> get(String method,
      {Map<String, dynamic>? query}) async {
    final authToken = prefs.getString('authToken');
    final response = await dio.get(
      method,
      queryParameters: query,
      options: Options(
        headers: {
          if (authToken != null && authToken.isNotEmpty)
            'Authorization': authToken,
        },
      ),
    );
    return response;
  }

  static Future<Response> post(
    String method,
    dynamic data,
  ) async {
    final authToken = prefs.getString('authToken');
    final response = await dio.post(
      method,
      data: data,
      options: Options(
        headers: {
          if (authToken != null && authToken.isNotEmpty)
            'Authorization': authToken,
        },
      ),
    );
    return response;
  }

  static Future<Response> patch(
    String method,
    dynamic data,
  ) async {
    final authToken = prefs.getString('authToken');
    final response = await dio.patch(
      method,
      data: data,
      options: Options(
        headers: {
          if (authToken != null && authToken.isNotEmpty)
            'Authorization': authToken,
        },
      ),
    );
    return response;
  }
}
