import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pair_love/animal_list/bloc/animal_list_bloc.dart';
import 'package:pair_love/utils/request_status.dart';

class AnimalListForm extends StatelessWidget {
  const AnimalListForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore Animals'),
        centerTitle: true,
      ),
      body: const _AnimalDataGridView(),
    );
  }
}

class _AnimalDataGridView extends StatelessWidget {
  const _AnimalDataGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnimalListBloc, AnimalListState>(
      builder: (context, state) {
        if (state.status.isSuccess) {
          return CustomScrollView(
            slivers: [
              SliverGrid(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200.0,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 4.0,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.teal[100 * (index % 9)],
                      child: Text('grid item $index'),
                    );
                  },
                  childCount: state.animals.length,
                ),
              ),
            ],
          );
        } else if (state.status.isFailure) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.warning_rounded,
                  size: 200,
                  color: Color(0xffffc107),
                ),
                Text('Error'),
                SizedBox(height: 40.0),
              ],
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
