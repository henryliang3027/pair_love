import 'package:animal_repository/animal_repository.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pair_love/utils/request_status.dart';

part 'my_favorite_event.dart';
part 'my_favorite_state.dart';

class MyFavoriteBloc extends Bloc<MyFavoriteEvent, MyFavoriteState> {
  MyFavoriteBloc() : super(const MyFavoriteState()) {
    on<FavoriteAnimalRequested>(_onFavoriteAnimalRequested);
  }

  void _onFavoriteAnimalRequested(
    FavoriteAnimalRequested event,
    Emitter<MyFavoriteState> emit,
  ) async {
    emit(state.copyWith(status: RequestStatus.loading));
  }
}
