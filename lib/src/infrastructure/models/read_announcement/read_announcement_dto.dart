import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tonic/src/domain/entities/read_announcement/read_announcement.dart';
import 'package:trip_tonic/src/infrastructure/utils/timestamp_converter.dart';

part 'read_announcement_dto.freezed.dart';
part 'read_announcement_dto.g.dart';

@freezed
class ReadAnnouncementDto with _$ReadAnnouncementDto {
  const factory ReadAnnouncementDto({
    // お知らせのID
    required String announcementId,

    // 作成日
    @TimestampConverter() required DateTime createdAt,
  }) = _ReadAnnouncementDto;
  const ReadAnnouncementDto._();

  factory ReadAnnouncementDto.fromJson(Map<String, dynamic> json) =>
      _$ReadAnnouncementDtoFromJson(json);

  factory ReadAnnouncementDto.fromFirestore(DocumentSnapshot doc) =>
      ReadAnnouncementDto.fromJson(doc.data()! as Map<String, dynamic>);

  ReadAnnouncement toDomain() => ReadAnnouncement(
        announcementId: announcementId,
        createdAt: createdAt,
      );
}
