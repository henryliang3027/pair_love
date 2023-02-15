part of 'animal_map_bloc.dart';

abstract class AnimalMapEvent extends Equatable {
  const AnimalMapEvent();
}

class AnimalMapRequested extends AnimalMapEvent {
  const AnimalMapRequested({
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
