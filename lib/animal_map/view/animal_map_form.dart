import 'package:flutter/material.dart';

class AnimalMapForm extends StatelessWidget {
  const AnimalMapForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animal Map'),
        centerTitle: true,
      ),
      body: const Center(
        child: Icon(Icons.abc),
      ),
    );
  }
}
