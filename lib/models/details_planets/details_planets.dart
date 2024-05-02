import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'details_planets.freezed.dart';
part 'details_planets.g.dart';

//referencia https://stackoverflow.com/questions/73459180/renaming-flutter-freezed-field-names-to-snake-pascal-kebab-or-anothing-along-th
//sem a anotacao de @required apenas required
@freezed
class DetailsPlanets with _$DetailsPlanets {
  const factory DetailsPlanets(
      {required final String id,
      required final String name,
      required final String resume,
      required final Features features,
      required}) = _DetailsPlanets;

  factory DetailsPlanets.fromJson(Map<String, Object?> json) =>
      _$DetailsPlanetsFromJson(json);
}

@freezed
class Features with _$Features {
  const factory Features(
      {required final String radius,
      @JsonKey(name: "Diameter") required final String diameter,
      required final String temperature,
      required final String gravity}) = _Features;

  factory Features.fromJson(Map<String, Object?> json) =>
      _$FeaturesFromJson(json);
}
