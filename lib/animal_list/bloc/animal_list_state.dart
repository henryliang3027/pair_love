part of 'animal_list_bloc.dart';

class AnimalListState extends Equatable {
  const AnimalListState({
    this.status = RequestStatus.initial,
    this.animals = const [],
  });

  final RequestStatus status;
  final List<Animal> animals;

  AnimalListState copyWith({
    RequestStatus? status,
    List<Animal>? animals,
  }) {
    return AnimalListState(
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
