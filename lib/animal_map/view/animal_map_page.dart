import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pair_love/animal_map/bloc/animal_map_bloc.dart';
import 'package:pair_love/animal_map/view/animal_map_form.dart';

class AnimalMapPage extends StatelessWidget {
  const AnimalMapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AnimalMapBloc(),
      child: const AnimalMapForm(),
    );
  }
}
