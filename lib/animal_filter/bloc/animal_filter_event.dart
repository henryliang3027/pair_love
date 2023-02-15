part of 'animal_filter_bloc.dart';

abstract class AnimalFilterEvent extends Equatable {
  const AnimalFilterEvent();
}

class SpeciesChanged extends AnimalFilterEvent {
  const SpeciesChanged({
    required this.species,
  });

  final int species;

  @override
  List<Object?> get props => [
        species,
      ];
}

class SexChanged extends AnimalFilterEvent {
  const SexChanged({
    required this.sex,
  });

  final int sex;

  @override
  List<Object?> get props => [
        sex,
      ];
}

class SterilizationChanged extends AnimalFilterEvent {
  const SterilizationChanged({
    required this.sterilization,
  });

  final bool sterilization;

  @override
  List<Object?> get props => [
        sterilization,
      ];
}

class AgeChanged extends AnimalFilterEvent {
  const AgeChanged({
    required this.age,
  });

  final int age;

  @override
  List<Object?> get props => [
        age,
      ];
}

class BodyTypeChanged extends AnimalFilterEvent {
  const BodyTypeChanged({
    required this.bodyType,
  });

  final int bodyType;

  @override
  List<Object?> get props => [
        bodyType,
      ];
}
