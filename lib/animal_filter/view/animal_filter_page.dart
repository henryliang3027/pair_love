import 'package:animal_repository/animal_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pair_love/animal_list/bloc/animal_list_bloc.dart';
import 'package:pair_love/animal_list/view/animal_list_form.dart';

class AnimalFilterPage extends StatelessWidget {
  const AnimalFilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AnimalListBloc(
        animalRepository: RepositoryProvider.of<AnimalRepository>(context),
      ),
      child: const AnimalListForm(),
    );
  }
}
