// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'latlng_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LatLngModel _$LatLngModelFromJson(Map<String, dynamic> json) {
  return _LatLngModel.fromJson(json);
}

/// @nodoc
mixin _$LatLngModel {
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LatLngModelCopyWith<LatLngModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatLngModelCopyWith<$Res> {
  factory $LatLngModelCopyWith(
          LatLngModel value, $Res Function(LatLngModel) then) =
      _$LatLngModelCopyWithImpl<$Res, LatLngModel>;
  @useResult
  $Res call({double? latitude, double? longitude});
}

/// @nodoc
class _$LatLngModelCopyWithImpl<$Res, $Val extends LatLngModel>
    implements $LatLngModelCopyWith<$Res> {
  _$LatLngModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LatLngModelCopyWith<$Res>
    implements $LatLngModelCopyWith<$Res> {
  factory _$$_LatLngModelCopyWith(
          _$_LatLngModel value, $Res Function(_$_LatLngModel) then) =
      __$$_LatLngModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? latitude, double? longitude});
}

/// @nodoc
class __$$_LatLngModelCopyWithImpl<$Res>
    extends _$LatLngModelCopyWithImpl<$Res, _$_LatLngModel>
    implements _$$_LatLngModelCopyWith<$Res> {
  __$$_LatLngModelCopyWithImpl(
      _$_LatLngModel _value, $Res Function(_$_LatLngModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$_LatLngModel(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LatLngModel extends _LatLngModel {
  _$_LatLngModel({this.latitude, this.longitude}) : super._();

  factory _$_LatLngModel.fromJson(Map<String, dynamic> json) =>
      _$$_LatLngModelFromJson(json);

  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'LatLngModel(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LatLngModel &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LatLngModelCopyWith<_$_LatLngModel> get copyWith =>
      __$$_LatLngModelCopyWithImpl<_$_LatLngModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LatLngModelToJson(
      this,
    );
  }
}

abstract class _LatLngModel extends LatLngModel {
  factory _LatLngModel({final double? latitude, final double? longitude}) =
      _$_LatLngModel;
  _LatLngModel._() : super._();

  factory _LatLngModel.fromJson(Map<String, dynamic> json) =
      _$_LatLngModel.fromJson;

  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_LatLngModelCopyWith<_$_LatLngModel> get copyWith =>
      throw _privateConstructorUsedError;
}
