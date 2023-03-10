import 'dart:convert';

import 'package:animal_repository/animal_repository.dart';
import 'package:dio/dio.dart';

/// Exception thrown when animalSearch fails.
class AnimalRequestFailure implements Exception {}

/// Exception thrown when the provided animal is not found.
class AnimalNotFoundFailure implements Exception {}

/// Exception thrown when the connect to server failed.
class ConnectionFailure implements Exception {}

class AnimalRepository {
  AnimalRepository({
    Dio? dio,
  }) : _dio = dio ??
            Dio(BaseOptions(
              baseUrl: _baseUrlOpenData,
              connectTimeout: _connectTimeout,
              receiveTimeout: _receiveTimeout,
            ));

  final Dio _dio;

  static const _baseUrlOpenData = 'https://data.coa.gov.tw';

  static const _connectTimeout = Duration(seconds: 10);
  static const _receiveTimeout = Duration(seconds: 10);

  Future<List<Animal>> getAnimals({
    int? top,
    int? skip,
  }) async {
    int adjustedTop = top ?? 1000;
    int adjustedSkip = skip ?? 0;

    String animalListApiPath =
        '/Service/OpenData/TransService.aspx?UnitId=QcbUEzN6E6DL&\$top=${adjustedTop.toString()}&\$skip=${adjustedSkip.toString()}';

    try {
      Response response = await _dio.get(
        animalListApiPath,
      );

      List data = response.data;
      print(data);

      if (data.runtimeType != List) throw AnimalRequestFailure();

      List<Animal> animals =
          List<Animal>.from(data.map((element) => Animal.fromJson(element)));

      return animals;
    } on DioError catch (_) {
      throw ConnectionFailure();
    }
  }
}
