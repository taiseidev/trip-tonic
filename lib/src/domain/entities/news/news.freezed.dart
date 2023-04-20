// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$News {
// お知らせ一覧
  NotificationList get notificationList =>
      throw _privateConstructorUsedError; // 運営からのお知らせ一覧
  AnnouncementList get announcementList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsCopyWith<News> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsCopyWith<$Res> {
  factory $NewsCopyWith(News value, $Res Function(News) then) =
      _$NewsCopyWithImpl<$Res, News>;
  @useResult
  $Res call(
      {NotificationList notificationList, AnnouncementList announcementList});

  $NotificationListCopyWith<$Res> get notificationList;
  $AnnouncementListCopyWith<$Res> get announcementList;
}

/// @nodoc
class _$NewsCopyWithImpl<$Res, $Val extends News>
    implements $NewsCopyWith<$Res> {
  _$NewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationList = null,
    Object? announcementList = null,
  }) {
    return _then(_value.copyWith(
      notificationList: null == notificationList
          ? _value.notificationList
          : notificationList // ignore: cast_nullable_to_non_nullable
              as NotificationList,
      announcementList: null == announcementList
          ? _value.announcementList
          : announcementList // ignore: cast_nullable_to_non_nullable
              as AnnouncementList,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NotificationListCopyWith<$Res> get notificationList {
    return $NotificationListCopyWith<$Res>(_value.notificationList, (value) {
      return _then(_value.copyWith(notificationList: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AnnouncementListCopyWith<$Res> get announcementList {
    return $AnnouncementListCopyWith<$Res>(_value.announcementList, (value) {
      return _then(_value.copyWith(announcementList: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NewsCopyWith<$Res> implements $NewsCopyWith<$Res> {
  factory _$$_NewsCopyWith(_$_News value, $Res Function(_$_News) then) =
      __$$_NewsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NotificationList notificationList, AnnouncementList announcementList});

  @override
  $NotificationListCopyWith<$Res> get notificationList;
  @override
  $AnnouncementListCopyWith<$Res> get announcementList;
}

/// @nodoc
class __$$_NewsCopyWithImpl<$Res> extends _$NewsCopyWithImpl<$Res, _$_News>
    implements _$$_NewsCopyWith<$Res> {
  __$$_NewsCopyWithImpl(_$_News _value, $Res Function(_$_News) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationList = null,
    Object? announcementList = null,
  }) {
    return _then(_$_News(
      notificationList: null == notificationList
          ? _value.notificationList
          : notificationList // ignore: cast_nullable_to_non_nullable
              as NotificationList,
      announcementList: null == announcementList
          ? _value.announcementList
          : announcementList // ignore: cast_nullable_to_non_nullable
              as AnnouncementList,
    ));
  }
}

/// @nodoc

class _$_News extends _News {
  const _$_News(
      {required this.notificationList, required this.announcementList})
      : super._();

// お知らせ一覧
  @override
  final NotificationList notificationList;
// 運営からのお知らせ一覧
  @override
  final AnnouncementList announcementList;

  @override
  String toString() {
    return 'News(notificationList: $notificationList, announcementList: $announcementList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_News &&
            (identical(other.notificationList, notificationList) ||
                other.notificationList == notificationList) &&
            (identical(other.announcementList, announcementList) ||
                other.announcementList == announcementList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, notificationList, announcementList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsCopyWith<_$_News> get copyWith =>
      __$$_NewsCopyWithImpl<_$_News>(this, _$identity);
}

abstract class _News extends News {
  const factory _News(
      {required final NotificationList notificationList,
      required final AnnouncementList announcementList}) = _$_News;
  const _News._() : super._();

  @override // お知らせ一覧
  NotificationList get notificationList;
  @override // 運営からのお知らせ一覧
  AnnouncementList get announcementList;
  @override
  @JsonKey(ignore: true)
  _$$_NewsCopyWith<_$_News> get copyWith => throw _privateConstructorUsedError;
}
