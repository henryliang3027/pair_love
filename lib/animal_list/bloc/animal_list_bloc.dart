import 'package:animal_repository/animal_repository.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pair_love/utils/request_status.dart';

part 'animal_list_event.dart';
part 'animal_list_state.dart';

class AnimalListBloc extends Bloc<AnimalListEvent, AnimalListState> {
  AnimalListBloc({
    required AnimalRepository animalRepository,
  })  : _animalRepository = animalRepository,
        super(const AnimalListState()) {
    on<AnimalListRequested>(_onAnimalListRequested);

    add(const AnimalListRequested());
  }

  final AnimalRepository _animalRepository;

  void _onAnimalListRequested(
    AnimalListRequested event,
    Emitter<AnimalListState> emit,
  ) async {
    emit(state.copyWith(status: RequestStatus.loading));
    try {
      List<Animal> animals = await _animalRepository.getAnimals(
        top: event.top,
        skip: event.skip,
      );

      emit(state.copyWith(
        status: RequestStatus.success,
        animals: animals,
      ));
    } on Exception {
      emit(state.copyWith(
        status: RequestStatus.failure,
      ));
    }
  }
}
