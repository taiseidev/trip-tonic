import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement.freezed.dart';
part 'announcement.g.dart';

@freezed
class Announcement with _$Announcement {
  const factory Announcement({
    // お知らせのID
    required String announcementId,

    // お知らせのタイトル
    required String title,

    // お知らせの内容
    required String content,

    // 既読済みかどうか
    required bool isRead,

    // 作成日
    required DateTime createdAt,

    // 更新日
    required DateTime updatedAt,
  }) = _Announcement;

  const Announcement._();

  factory Announcement.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementFromJson(json);
}
