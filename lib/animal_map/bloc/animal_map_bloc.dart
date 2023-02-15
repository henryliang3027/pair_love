import 'package:animal_repository/animal_repository.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pair_love/utils/request_status.dart';

part 'animal_map_event.dart';
part 'animal_map_state.dart';

class AnimalMapBloc extends Bloc<AnimalMapEvent, AnimalMapState> {
  AnimalMapBloc() : super(const AnimalMapState()) {
    on<AnimalMapRequested>(_onAnimalMapRequested);
  }

  void _onAnimalMapRequested(
    AnimalMapRequested event,
    Emitter<AnimalMapState> emit,
  ) async {
    emit(state.copyWith(status: RequestStatus.loading));
  }
}
