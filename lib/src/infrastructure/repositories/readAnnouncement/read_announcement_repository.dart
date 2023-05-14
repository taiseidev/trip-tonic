import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/domain/entities/read_announcement/read_announcement_list.dart';
import 'package:trip_tonic/src/infrastructure/data_source/remote/firestore/news/readAnnouncements/read_announcements_data_source.dart';
import 'package:trip_tonic/src/infrastructure/models/read_announcement/read_announcement_dto.dart';

part 'read_announcement_repository.g.dart';

@riverpod
ReadAnnouncementRepository readAnnouncementRepository(
  ReadAnnouncementRepositoryRef ref,
) =>
    ReadAnnouncementRepository(ref);

class ReadAnnouncementRepository {
  ReadAnnouncementRepository(this.ref);

  final ReadAnnouncementRepositoryRef ref;

  Future<ReadAnnouncementList> fetchReadAnnouncementList() async {
    // Firestoreから（運営からの）お知らせ一覧を取得する
    final snapshot = await ref
        .read(readAnnouncementsDataSourceProvider)
        .fetchReadAnnouncementList();

    // Firestoreから取得したデータをドメインモデルに変換する
    final announcements = snapshot.docs
        .map(
          (doc) => ReadAnnouncementDto.fromFirestore(doc).toDomain(),
        )
        .toList();

    // AnnouncementListに変換して返却
    return ReadAnnouncementList(readAnnouncements: announcements);
  }

  // 運営からのお知らせを既読にする
  Future<void> updateAnnouncementReadState({required String announcementId}) =>
      ref
          .read(readAnnouncementsDataSourceProvider)
          .updateAnnouncementReadState(announcementId: announcementId);
}
