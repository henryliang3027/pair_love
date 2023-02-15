part of 'animal_map_bloc.dart';

class AnimalMapState extends Equatable {
  const AnimalMapState({
    this.status = RequestStatus.initial,
    this.animals = const [],
  });

  final RequestStatus status;
  final List<Animal> animals;

  AnimalMapState copyWith({
    RequestStatus? status,
    List<Animal>? animals,
  }) {
    return AnimalMapState(
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
