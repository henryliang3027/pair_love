import 'package:flutter/material.dart';

class AnimalListForm extends StatelessWidget {
  const AnimalListForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore Animals'),
        centerTitle: true,
      ),
      body: const Center(
        child: Icon(Icons.abc),
      ),
    );
  }
}
