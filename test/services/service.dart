import 'package:flutter_test/flutter_test.dart';
import 'package:warrior_pets/model/cat_breed.dart';
import 'package:warrior_pets/model/dog_breed.dart';
import 'package:warrior_pets/services/service.dart';

void main() {

  Service service = Service();

  test("deve retornar uma List<DogBreed>", () async {
    final List<DogBreed> response = await service.fetchDogBreeds(0, 50);
  });

  test("deve retornar uma List<CatBreed>", () async {
    final List<CatBreed> response = await service.fetchCatBreeds(0, 50);
  });

  test("deve retornar uma List<DogBreed>", () async {
    final List<DogBreed> response = await service.searcheDogBreeds("akita");
  });

}