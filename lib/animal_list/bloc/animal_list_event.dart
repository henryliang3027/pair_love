part of 'animal_list_bloc.dart';

abstract class AnimalListEvent extends Equatable {
  const AnimalListEvent();
}

class AnimalListRequested extends AnimalListEvent {
  const AnimalListRequested({
    this.top = 1000,
    this.skip = 0,
  });

  final int top;
  final int skip;

  @override
  List<Object?> get props => [
        top,
        skip,
      ];
}
