import 'package:flutter/material.dart';

class MyFavotiteForm extends StatelessWidget {
  const MyFavotiteForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Favorite'),
        centerTitle: true,
      ),
      body: const Center(
        child: Icon(Icons.favorite),
      ),
    );
  }
}
