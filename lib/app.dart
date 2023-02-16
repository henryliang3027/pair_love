import 'package:animal_repository/animal_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pair_love/home/home_page.dart';

class App extends StatelessWidget {
  const App({
    super.key,
    required AnimalRepository animalRepository,
  }) : _animalRepository = animalRepository;

  final AnimalRepository _animalRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => _animalRepository,
        )
      ],
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: const HomePage(),
    );
  }
}
