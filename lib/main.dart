import 'package:animal_repository/animal_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pair_love/animal_bloc_observer.dart';
import 'package:pair_love/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const AnimalBlocObserver();

  runApp(App(
    animalRepository: AnimalRepository(),
  ));
}
