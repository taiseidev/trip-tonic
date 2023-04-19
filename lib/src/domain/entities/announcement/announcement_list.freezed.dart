// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'announcement_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnnouncementList _$AnnouncementListFromJson(Map<String, dynamic> json) {
  return _AnnouncementList.fromJson(json);
}

/// @nodoc
mixin _$AnnouncementList {
// お知らせのリスト
  List<Announcement> get announcements => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnnouncementListCopyWith<AnnouncementList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementListCopyWith<$Res> {
  factory $AnnouncementListCopyWith(
          AnnouncementList value, $Res Function(AnnouncementList) then) =
      _$AnnouncementListCopyWithImpl<$Res, AnnouncementList>;
  @useResult
  $Res call({List<Announcement> announcements});
}

/// @nodoc
class _$AnnouncementListCopyWithImpl<$Res, $Val extends AnnouncementList>
    implements $AnnouncementListCopyWith<$Res> {
  _$AnnouncementListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? announcements = null,
  }) {
    return _then(_value.copyWith(
      announcements: null == announcements
          ? _value.announcements
          : announcements // ignore: cast_nullable_to_non_nullable
              as List<Announcement>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnnouncementListCopyWith<$Res>
    implements $AnnouncementListCopyWith<$Res> {
  factory _$$_AnnouncementListCopyWith(
          _$_AnnouncementList value, $Res Function(_$_AnnouncementList) then) =
      __$$_AnnouncementListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Announcement> announcements});
}

/// @nodoc
class __$$_AnnouncementListCopyWithImpl<$Res>
    extends _$AnnouncementListCopyWithImpl<$Res, _$_AnnouncementList>
    implements _$$_AnnouncementListCopyWith<$Res> {
  __$$_AnnouncementListCopyWithImpl(
      _$_AnnouncementList _value, $Res Function(_$_AnnouncementList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? announcements = null,
  }) {
    return _then(_$_AnnouncementList(
      announcements: null == announcements
          ? _value._announcements
          : announcements // ignore: cast_nullable_to_non_nullable
              as List<Announcement>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnnouncementList extends _AnnouncementList {
  const _$_AnnouncementList(
      {final List<Announcement> announcements = const <Announcement>[]})
      : _announcements = announcements,
        super._();

  factory _$_AnnouncementList.fromJson(Map<String, dynamic> json) =>
      _$$_AnnouncementListFromJson(json);

// お知らせのリスト
  final List<Announcement> _announcements;
// お知らせのリスト
  @override
  @JsonKey()
  List<Announcement> get announcements {
    if (_announcements is EqualUnmodifiableListView) return _announcements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_announcements);
  }

  @override
  String toString() {
    return 'AnnouncementList(announcements: $announcements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnnouncementList &&
            const DeepCollectionEquality()
                .equals(other._announcements, _announcements));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_announcements));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnnouncementListCopyWith<_$_AnnouncementList> get copyWith =>
      __$$_AnnouncementListCopyWithImpl<_$_AnnouncementList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnnouncementListToJson(
      this,
    );
  }
}

abstract class _AnnouncementList extends AnnouncementList {
  const factory _AnnouncementList({final List<Announcement> announcements}) =
      _$_AnnouncementList;
  const _AnnouncementList._() : super._();

  factory _AnnouncementList.fromJson(Map<String, dynamic> json) =
      _$_AnnouncementList.fromJson;

  @override // お知らせのリスト
  List<Announcement> get announcements;
  @override
  @JsonKey(ignore: true)
  _$$_AnnouncementListCopyWith<_$_AnnouncementList> get copyWith =>
      throw _privateConstructorUsedError;
}
