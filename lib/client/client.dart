import 'package:beatiful_planets_flutter/client/config/dio_config.dart';
import 'package:beatiful_planets_flutter/data/data_or_expection.dart';
import 'package:beatiful_planets_flutter/models/details_planets/details_planets.dart';
import 'package:dio/dio.dart';

class Client {
  Future<DataOrException<DetailsPlanets>> getOnlyDetailsPlanet(
      {required String id}) async {
    //melhor maneira de usar o try catch
    try {
      final response = await dio.get(
        '/planet/$id',
      );
      if (response.statusCode == 200) {
        final data = DetailsPlanets.fromJson(response.data);
        return DataOrException(data: data, isSuccess: true);
      }
    } on DioException catch (_) {
      return DataOrException(isSuccess: false);
    }
    return DataOrException(isSuccess: false);
  }
}
