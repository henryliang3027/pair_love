import 'package:animal_repository/animal_repository.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pair_love/utils/request_status.dart';

part 'animal_filter_event.dart';
part 'animal_filter_state.dart';

class AnimalFilterBloc extends Bloc<AnimalFilterEvent, AnimalFilterState> {
  AnimalFilterBloc() : super(const AnimalFilterState()) {
    on<SpeciesChanged>(_onSpeciesChanged);
  }

  void _onSpeciesChanged(
    SpeciesChanged event,
    Emitter<AnimalFilterState> emit,
  ) async {
    emit(state.copyWith(status: RequestStatus.loading));
  }
}
