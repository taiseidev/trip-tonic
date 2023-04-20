// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_announcement_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReadAnnouncementList {
// お知らせのリスト
  List<ReadAnnouncement> get readAnnouncements =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReadAnnouncementListCopyWith<ReadAnnouncementList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadAnnouncementListCopyWith<$Res> {
  factory $ReadAnnouncementListCopyWith(ReadAnnouncementList value,
          $Res Function(ReadAnnouncementList) then) =
      _$ReadAnnouncementListCopyWithImpl<$Res, ReadAnnouncementList>;
  @useResult
  $Res call({List<ReadAnnouncement> readAnnouncements});
}

/// @nodoc
class _$ReadAnnouncementListCopyWithImpl<$Res,
        $Val extends ReadAnnouncementList>
    implements $ReadAnnouncementListCopyWith<$Res> {
  _$ReadAnnouncementListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? readAnnouncements = null,
  }) {
    return _then(_value.copyWith(
      readAnnouncements: null == readAnnouncements
          ? _value.readAnnouncements
          : readAnnouncements // ignore: cast_nullable_to_non_nullable
              as List<ReadAnnouncement>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReadAnnouncementListCopyWith<$Res>
    implements $ReadAnnouncementListCopyWith<$Res> {
  factory _$$_ReadAnnouncementListCopyWith(_$_ReadAnnouncementList value,
          $Res Function(_$_ReadAnnouncementList) then) =
      __$$_ReadAnnouncementListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ReadAnnouncement> readAnnouncements});
}

/// @nodoc
class __$$_ReadAnnouncementListCopyWithImpl<$Res>
    extends _$ReadAnnouncementListCopyWithImpl<$Res, _$_ReadAnnouncementList>
    implements _$$_ReadAnnouncementListCopyWith<$Res> {
  __$$_ReadAnnouncementListCopyWithImpl(_$_ReadAnnouncementList _value,
      $Res Function(_$_ReadAnnouncementList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? readAnnouncements = null,
  }) {
    return _then(_$_ReadAnnouncementList(
      readAnnouncements: null == readAnnouncements
          ? _value._readAnnouncements
          : readAnnouncements // ignore: cast_nullable_to_non_nullable
              as List<ReadAnnouncement>,
    ));
  }
}

/// @nodoc

class _$_ReadAnnouncementList extends _ReadAnnouncementList {
  const _$_ReadAnnouncementList(
      {final List<ReadAnnouncement> readAnnouncements =
          const <ReadAnnouncement>[]})
      : _readAnnouncements = readAnnouncements,
        super._();

// お知らせのリスト
  final List<ReadAnnouncement> _readAnnouncements;
// お知らせのリスト
  @override
  @JsonKey()
  List<ReadAnnouncement> get readAnnouncements {
    if (_readAnnouncements is EqualUnmodifiableListView)
      return _readAnnouncements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_readAnnouncements);
  }

  @override
  String toString() {
    return 'ReadAnnouncementList(readAnnouncements: $readAnnouncements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReadAnnouncementList &&
            const DeepCollectionEquality()
                .equals(other._readAnnouncements, _readAnnouncements));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_readAnnouncements));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReadAnnouncementListCopyWith<_$_ReadAnnouncementList> get copyWith =>
      __$$_ReadAnnouncementListCopyWithImpl<_$_ReadAnnouncementList>(
          this, _$identity);
}

abstract class _ReadAnnouncementList extends ReadAnnouncementList {
  const factory _ReadAnnouncementList(
          {final List<ReadAnnouncement> readAnnouncements}) =
      _$_ReadAnnouncementList;
  const _ReadAnnouncementList._() : super._();

  @override // お知らせのリスト
  List<ReadAnnouncement> get readAnnouncements;
  @override
  @JsonKey(ignore: true)
  _$$_ReadAnnouncementListCopyWith<_$_ReadAnnouncementList> get copyWith =>
      throw _privateConstructorUsedError;
}
