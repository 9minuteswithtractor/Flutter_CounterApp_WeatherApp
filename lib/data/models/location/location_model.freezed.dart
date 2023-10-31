// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationModelFreezed _$LocationModelFreezedFromJson(Map<String, dynamic> json) {
  return _LocationModelFreezed.fromJson(json);
}

/// @nodoc
mixin _$LocationModelFreezed {
  String get administrativeArea => throw _privateConstructorUsedError;
  String get locality => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationModelFreezedCopyWith<LocationModelFreezed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelFreezedCopyWith<$Res> {
  factory $LocationModelFreezedCopyWith(LocationModelFreezed value,
          $Res Function(LocationModelFreezed) then) =
      _$LocationModelFreezedCopyWithImpl<$Res, LocationModelFreezed>;
  @useResult
  $Res call({String administrativeArea, String locality, String country});
}

/// @nodoc
class _$LocationModelFreezedCopyWithImpl<$Res,
        $Val extends LocationModelFreezed>
    implements $LocationModelFreezedCopyWith<$Res> {
  _$LocationModelFreezedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? administrativeArea = null,
    Object? locality = null,
    Object? country = null,
  }) {
    return _then(_value.copyWith(
      administrativeArea: null == administrativeArea
          ? _value.administrativeArea
          : administrativeArea // ignore: cast_nullable_to_non_nullable
              as String,
      locality: null == locality
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationModelFreezedImplCopyWith<$Res>
    implements $LocationModelFreezedCopyWith<$Res> {
  factory _$$LocationModelFreezedImplCopyWith(_$LocationModelFreezedImpl value,
          $Res Function(_$LocationModelFreezedImpl) then) =
      __$$LocationModelFreezedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String administrativeArea, String locality, String country});
}

/// @nodoc
class __$$LocationModelFreezedImplCopyWithImpl<$Res>
    extends _$LocationModelFreezedCopyWithImpl<$Res, _$LocationModelFreezedImpl>
    implements _$$LocationModelFreezedImplCopyWith<$Res> {
  __$$LocationModelFreezedImplCopyWithImpl(_$LocationModelFreezedImpl _value,
      $Res Function(_$LocationModelFreezedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? administrativeArea = null,
    Object? locality = null,
    Object? country = null,
  }) {
    return _then(_$LocationModelFreezedImpl(
      administrativeArea: null == administrativeArea
          ? _value.administrativeArea
          : administrativeArea // ignore: cast_nullable_to_non_nullable
              as String,
      locality: null == locality
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationModelFreezedImpl implements _LocationModelFreezed {
  const _$LocationModelFreezedImpl(
      {required this.administrativeArea,
      required this.locality,
      required this.country});

  factory _$LocationModelFreezedImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationModelFreezedImplFromJson(json);

  @override
  final String administrativeArea;
  @override
  final String locality;
  @override
  final String country;

  @override
  String toString() {
    return 'LocationModelFreezed(administrativeArea: $administrativeArea, locality: $locality, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationModelFreezedImpl &&
            (identical(other.administrativeArea, administrativeArea) ||
                other.administrativeArea == administrativeArea) &&
            (identical(other.locality, locality) ||
                other.locality == locality) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, administrativeArea, locality, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationModelFreezedImplCopyWith<_$LocationModelFreezedImpl>
      get copyWith =>
          __$$LocationModelFreezedImplCopyWithImpl<_$LocationModelFreezedImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationModelFreezedImplToJson(
      this,
    );
  }
}

abstract class _LocationModelFreezed implements LocationModelFreezed {
  const factory _LocationModelFreezed(
      {required final String administrativeArea,
      required final String locality,
      required final String country}) = _$LocationModelFreezedImpl;

  factory _LocationModelFreezed.fromJson(Map<String, dynamic> json) =
      _$LocationModelFreezedImpl.fromJson;

  @override
  String get administrativeArea;
  @override
  String get locality;
  @override
  String get country;
  @override
  @JsonKey(ignore: true)
  _$$LocationModelFreezedImplCopyWith<_$LocationModelFreezedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
