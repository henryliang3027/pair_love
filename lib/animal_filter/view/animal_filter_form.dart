import 'package:flutter/material.dart';

class AnimalFilterForm extends StatelessWidget {
  const AnimalFilterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        centerTitle: true,
      ),
      body: const Center(
        child: Icon(Icons.abc),
      ),
    );
  }
}
