import 'package:dio/dio.dart';

class DioClient {

   late Dio dio;

   DioClient({int connectionTimeout = 60000,
         int receiveTimeout = 60000,
         bool isLogEnabled = true,
         List<InterceptorsWrapper>? interceptWraps}) {
     BaseOptions options = () {
      BaseOptions options = BaseOptions();
      options.connectTimeout = connectionTimeout;
      options.receiveTimeout = receiveTimeout;

      return options;
    }();

    this.dio = () {
      Dio dio = Dio(options);

      if (isLogEnabled) {
        dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
      }

      if(interceptWraps != null && interceptWraps.isNotEmpty) {
        dio.interceptors.addAll(interceptWraps);
      }

      return dio;
    } ();
   }
}