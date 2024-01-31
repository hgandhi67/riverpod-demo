import 'package:demo_task/models/user_model.dart';
import 'package:demo_task/utils/env.dart';
import 'package:dio/dio.dart';

final apiService = ApiService.instance;

class ApiService {
  ApiService._();

  static ApiService get instance => ApiService._();

  static String baseUrl = Env.baseUrl;

  static Dio createDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        maxRedirects: 5,
        contentType: Headers.jsonContentType,
      ),
    );
    return dio;
  }

  Future<User?> fetchUsers({
    String? name,
    num? minAge,
    num? maxAge,
    num? page,
  }) async {
    try {
      String url = Env.usersContinuationUrl;

      if (name != null && name.isNotEmpty) {
        url += "${Env.nameParam}$name";
      }

      if (minAge != null) {
        url += "${Env.ageLtParam}$maxAge";
      }

      if (maxAge != null) {
        url += "${Env.ageGtParam}$minAge";
      }

      if (page != null && page > 0) {
        url += "${Env.pageParam}$page";
      }

      final dio = createDio();
      final response = await dio.get(url);

      if (response.statusCode == 200) {
        final model = User.fromJson(response.data);
        return model;
      }
    } catch (e, stacktrace) {
      print("Api call Error =====>>> $e");
    }

    return null;
  }
}
