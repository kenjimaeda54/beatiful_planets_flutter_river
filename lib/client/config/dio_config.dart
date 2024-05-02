import 'package:dio/dio.dart';

//se der erro que nao conseguiu conectar precisa passar o ip
final dio = Dio(BaseOptions(
    baseUrl: 'http://192.168.0.5:3333/',
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 3),
    receiveDataWhenStatusError: true));
