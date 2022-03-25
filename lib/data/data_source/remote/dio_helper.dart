import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_temp_project/data/data_source/local/pref/sessions_pref.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioHelper {
  static Dio? _dio;

  static Dio get dioObject {
    if (_dio == null) {
      _dio = Dio(BaseOptions(
        connectTimeout: 30000,
        receiveTimeout: 30000,
        sendTimeout: 30000,
      ));
      _dio?.interceptors.add(InterceptorsWrapper(onRequest: (
        RequestOptions options,
        handler,
      ) {
        if (needToken(options.path)) {
          options.headers['Authorization'] = SessionPref.getAccessToken();
        }
        return handler.next(options);
      }, onResponse: (response, handler) {
        return handler.next(response);
      }, onError: (error, handler) {
        return handler.next(error);
      }));
      if (kDebugMode) {
        _dio?.interceptors.add(PrettyDioLogger(
            requestHeader: true,
            requestBody: true,
            responseBody: true,
            responseHeader: true,
            error: true,
            compact: true,
            maxWidth: 1000));
      } else {
        debugPrint = (String? message, {int? wrapWidth}) {};
      }
      return _dio!;
    } else {
      return _dio!;
    }
  }

  static bool needToken(String path) {
    return path.contains('/api/user/') ||
        path.contains('/api/auth/') ;
  }
}
