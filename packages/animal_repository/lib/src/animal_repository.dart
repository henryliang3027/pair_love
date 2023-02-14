import 'package:open_data_api/open_data_api.dart';

class AnimalRepository {
  AnimalRepository({OpenDataApiClient? openDataApiClient})
      : _openDataApiClient = openDataApiClient ?? OpenDataApiClient();

  final OpenDataApiClient _openDataApiClient;

  Future<List<Animal>> getAnimals({
    int? top,
    int? skip,
  }) async {
    List<Animal> animals = await _openDataApiClient.getAnimals();

    return animals;
  }
}
