// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_planets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailsPlanetsImpl _$$DetailsPlanetsImplFromJson(Map<String, dynamic> json) =>
    _$DetailsPlanetsImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      resume: json['resume'] as String,
      features: Features.fromJson(json['features'] as Map<String, dynamic>),
      required: json['required'],
    );

Map<String, dynamic> _$$DetailsPlanetsImplToJson(
        _$DetailsPlanetsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'resume': instance.resume,
      'features': instance.features,
      'required': instance.required,
    };

_$FeaturesImpl _$$FeaturesImplFromJson(Map<String, dynamic> json) =>
    _$FeaturesImpl(
      radius: json['radius'] as String,
      diameter: json['Diameter'] as String,
      temperature: json['temperature'] as String,
      gravity: json['gravity'] as String,
    );

Map<String, dynamic> _$$FeaturesImplToJson(_$FeaturesImpl instance) =>
    <String, dynamic>{
      'radius': instance.radius,
      'Diameter': instance.diameter,
      'temperature': instance.temperature,
      'gravity': instance.gravity,
    };
