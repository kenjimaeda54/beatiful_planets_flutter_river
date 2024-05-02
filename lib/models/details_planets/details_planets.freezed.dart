// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_planets.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailsPlanets _$DetailsPlanetsFromJson(Map<String, dynamic> json) {
  return _DetailsPlanets.fromJson(json);
}

/// @nodoc
mixin _$DetailsPlanets {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get resume => throw _privateConstructorUsedError;
  Features get features => throw _privateConstructorUsedError;
  dynamic get required => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsPlanetsCopyWith<DetailsPlanets> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsPlanetsCopyWith<$Res> {
  factory $DetailsPlanetsCopyWith(
          DetailsPlanets value, $Res Function(DetailsPlanets) then) =
      _$DetailsPlanetsCopyWithImpl<$Res, DetailsPlanets>;
  @useResult
  $Res call(
      {String id,
      String name,
      String resume,
      Features features,
      dynamic required});

  $FeaturesCopyWith<$Res> get features;
}

/// @nodoc
class _$DetailsPlanetsCopyWithImpl<$Res, $Val extends DetailsPlanets>
    implements $DetailsPlanetsCopyWith<$Res> {
  _$DetailsPlanetsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? resume = null,
    Object? features = null,
    Object? required = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      resume: null == resume
          ? _value.resume
          : resume // ignore: cast_nullable_to_non_nullable
              as String,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as Features,
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FeaturesCopyWith<$Res> get features {
    return $FeaturesCopyWith<$Res>(_value.features, (value) {
      return _then(_value.copyWith(features: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailsPlanetsImplCopyWith<$Res>
    implements $DetailsPlanetsCopyWith<$Res> {
  factory _$$DetailsPlanetsImplCopyWith(_$DetailsPlanetsImpl value,
          $Res Function(_$DetailsPlanetsImpl) then) =
      __$$DetailsPlanetsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String resume,
      Features features,
      dynamic required});

  @override
  $FeaturesCopyWith<$Res> get features;
}

/// @nodoc
class __$$DetailsPlanetsImplCopyWithImpl<$Res>
    extends _$DetailsPlanetsCopyWithImpl<$Res, _$DetailsPlanetsImpl>
    implements _$$DetailsPlanetsImplCopyWith<$Res> {
  __$$DetailsPlanetsImplCopyWithImpl(
      _$DetailsPlanetsImpl _value, $Res Function(_$DetailsPlanetsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? resume = null,
    Object? features = null,
    Object? required = freezed,
  }) {
    return _then(_$DetailsPlanetsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      resume: null == resume
          ? _value.resume
          : resume // ignore: cast_nullable_to_non_nullable
              as String,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as Features,
      required: freezed == required ? _value.required! : required,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailsPlanetsImpl
    with DiagnosticableTreeMixin
    implements _DetailsPlanets {
  const _$DetailsPlanetsImpl(
      {required this.id,
      required this.name,
      required this.resume,
      required this.features,
      this.required});

  factory _$DetailsPlanetsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailsPlanetsImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String resume;
  @override
  final Features features;
  @override
  final dynamic required;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailsPlanets(id: $id, name: $name, resume: $resume, features: $features, required: $required)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailsPlanets'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('resume', resume))
      ..add(DiagnosticsProperty('features', features))
      ..add(DiagnosticsProperty('required', required));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsPlanetsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.resume, resume) || other.resume == resume) &&
            (identical(other.features, features) ||
                other.features == features) &&
            const DeepCollectionEquality().equals(other.required, required));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, resume, features,
      const DeepCollectionEquality().hash(required));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsPlanetsImplCopyWith<_$DetailsPlanetsImpl> get copyWith =>
      __$$DetailsPlanetsImplCopyWithImpl<_$DetailsPlanetsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailsPlanetsImplToJson(
      this,
    );
  }
}

abstract class _DetailsPlanets implements DetailsPlanets {
  const factory _DetailsPlanets(
      {required final String id,
      required final String name,
      required final String resume,
      required final Features features,
      final dynamic required}) = _$DetailsPlanetsImpl;

  factory _DetailsPlanets.fromJson(Map<String, dynamic> json) =
      _$DetailsPlanetsImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get resume;
  @override
  Features get features;
  @override
  dynamic get required;
  @override
  @JsonKey(ignore: true)
  _$$DetailsPlanetsImplCopyWith<_$DetailsPlanetsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Features _$FeaturesFromJson(Map<String, dynamic> json) {
  return _Features.fromJson(json);
}

/// @nodoc
mixin _$Features {
  String get radius => throw _privateConstructorUsedError;
  @JsonKey(name: "Diameter")
  String get diameter => throw _privateConstructorUsedError;
  String get temperature => throw _privateConstructorUsedError;
  String get gravity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeaturesCopyWith<Features> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturesCopyWith<$Res> {
  factory $FeaturesCopyWith(Features value, $Res Function(Features) then) =
      _$FeaturesCopyWithImpl<$Res, Features>;
  @useResult
  $Res call(
      {String radius,
      @JsonKey(name: "Diameter") String diameter,
      String temperature,
      String gravity});
}

/// @nodoc
class _$FeaturesCopyWithImpl<$Res, $Val extends Features>
    implements $FeaturesCopyWith<$Res> {
  _$FeaturesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? radius = null,
    Object? diameter = null,
    Object? temperature = null,
    Object? gravity = null,
  }) {
    return _then(_value.copyWith(
      radius: null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as String,
      diameter: null == diameter
          ? _value.diameter
          : diameter // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as String,
      gravity: null == gravity
          ? _value.gravity
          : gravity // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeaturesImplCopyWith<$Res>
    implements $FeaturesCopyWith<$Res> {
  factory _$$FeaturesImplCopyWith(
          _$FeaturesImpl value, $Res Function(_$FeaturesImpl) then) =
      __$$FeaturesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String radius,
      @JsonKey(name: "Diameter") String diameter,
      String temperature,
      String gravity});
}

/// @nodoc
class __$$FeaturesImplCopyWithImpl<$Res>
    extends _$FeaturesCopyWithImpl<$Res, _$FeaturesImpl>
    implements _$$FeaturesImplCopyWith<$Res> {
  __$$FeaturesImplCopyWithImpl(
      _$FeaturesImpl _value, $Res Function(_$FeaturesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? radius = null,
    Object? diameter = null,
    Object? temperature = null,
    Object? gravity = null,
  }) {
    return _then(_$FeaturesImpl(
      radius: null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as String,
      diameter: null == diameter
          ? _value.diameter
          : diameter // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as String,
      gravity: null == gravity
          ? _value.gravity
          : gravity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeaturesImpl with DiagnosticableTreeMixin implements _Features {
  const _$FeaturesImpl(
      {required this.radius,
      @JsonKey(name: "Diameter") required this.diameter,
      required this.temperature,
      required this.gravity});

  factory _$FeaturesImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeaturesImplFromJson(json);

  @override
  final String radius;
  @override
  @JsonKey(name: "Diameter")
  final String diameter;
  @override
  final String temperature;
  @override
  final String gravity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Features(radius: $radius, diameter: $diameter, temperature: $temperature, gravity: $gravity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Features'))
      ..add(DiagnosticsProperty('radius', radius))
      ..add(DiagnosticsProperty('diameter', diameter))
      ..add(DiagnosticsProperty('temperature', temperature))
      ..add(DiagnosticsProperty('gravity', gravity));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturesImpl &&
            (identical(other.radius, radius) || other.radius == radius) &&
            (identical(other.diameter, diameter) ||
                other.diameter == diameter) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.gravity, gravity) || other.gravity == gravity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, radius, diameter, temperature, gravity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeaturesImplCopyWith<_$FeaturesImpl> get copyWith =>
      __$$FeaturesImplCopyWithImpl<_$FeaturesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeaturesImplToJson(
      this,
    );
  }
}

abstract class _Features implements Features {
  const factory _Features(
      {required final String radius,
      @JsonKey(name: "Diameter") required final String diameter,
      required final String temperature,
      required final String gravity}) = _$FeaturesImpl;

  factory _Features.fromJson(Map<String, dynamic> json) =
      _$FeaturesImpl.fromJson;

  @override
  String get radius;
  @override
  @JsonKey(name: "Diameter")
  String get diameter;
  @override
  String get temperature;
  @override
  String get gravity;
  @override
  @JsonKey(ignore: true)
  _$$FeaturesImplCopyWith<_$FeaturesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
