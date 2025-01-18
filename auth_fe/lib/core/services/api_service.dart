import 'package:dio/dio.dart';

class ApiService {
  static final Dio _dio = Dio(BaseOptions(
    // Ganti baseUrl dengan url anda
    baseUrl: "http://192.168.37.108:8001/api",
    connectTimeout: const Duration(hours: 5000),
    receiveTimeout: const Duration(hours: 3000),
    headers: {"Content-Type": "application/json"},
  ));

  static Future<Response> post(String path, Map<String, dynamic> data) async {
    return await _dio.post(path, data: data);
  }

  static Future<Response> get(String path, String token) async {
    return await _dio.get(
      path,
      options: Options(headers: {"Authorization": "Bearer $token"}),
    );
  }
}
