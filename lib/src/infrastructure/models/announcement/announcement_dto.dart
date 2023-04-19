import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tonic/src/domain/entities/announcement/announcement.dart';
import 'package:trip_tonic/src/infrastructure/utils/timestamp_converter.dart';

part 'announcement_dto.freezed.dart';
part 'announcement_dto.g.dart';

@freezed
class AnnouncementDto with _$AnnouncementDto {
  const factory AnnouncementDto({
    // （運営からの）お知らせのID
    required String announcementId,

    // お知らせのタイトル
    required String title,

    // お知らせの内容
    required String content,

    // 作成日
    @TimestampConverter() required DateTime createdAt,

    // 更新日
    @TimestampConverter() required DateTime updatedAt,
  }) = _AnnouncementDto;
  const AnnouncementDto._();

  factory AnnouncementDto.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementDtoFromJson(json);

  factory AnnouncementDto.fromFirestore(DocumentSnapshot doc) =>
      AnnouncementDto.fromJson(doc.data()! as Map<String, dynamic>);

  Announcement toDomain() => Announcement(
        announcementId: announcementId,
        title: title,
        content: content,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
