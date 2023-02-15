part of 'my_favorite_bloc.dart';

class MyFavoriteState extends Equatable {
  const MyFavoriteState({
    this.status = RequestStatus.initial,
    this.animals = const [],
  });

  final RequestStatus status;
  final List<Animal> animals;

  MyFavoriteState copyWith({
    RequestStatus? status,
    List<Animal>? animals,
  }) {
    return MyFavoriteState(
      status: status ?? this.status,
      animals: animals ?? this.animals,
    );
  }

  @override
  List<Object> get props => [
        status,
        animals,
      ];
}
