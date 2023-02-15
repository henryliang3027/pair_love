part of 'my_favorite_bloc.dart';

abstract class MyFavoriteEvent extends Equatable {
  const MyFavoriteEvent();
}

class FavoriteAnimalRequested extends MyFavoriteEvent {
  const FavoriteAnimalRequested();

  @override
  List<Object?> get props => [];
}
