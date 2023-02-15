part of 'animal_filter_bloc.dart';

class AnimalFilterState extends Equatable {
  const AnimalFilterState({
    this.status = RequestStatus.initial,
    this.animals = const [],
  });

  final RequestStatus status;
  final List<Animal> animals;

  AnimalFilterState copyWith({
    RequestStatus? status,
    List<Animal>? animals,
  }) {
    return AnimalFilterState(
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
