import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pair_love/my_favorite/bloc/my_favorite_bloc.dart';
import 'package:pair_love/my_favorite/view/my_favorite_form.dart';

class MyFavoritePage extends StatelessWidget {
  const MyFavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyFavoriteBloc(),
      child: const MyFavotiteForm(),
    );
  }
}
