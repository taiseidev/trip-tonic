import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/domain/entities/announcement/announcement_list.dart';
import 'package:trip_tonic/src/infrastructure/data_source/remote/firestore/announcement/announcement_data_source.dart';
import 'package:trip_tonic/src/infrastructure/models/announcement/announcement_dto.dart';

part 'announcement_repository.g.dart';

@riverpod
AnnouncementRepository announcementRepository(AnnouncementRepositoryRef ref) =>
    AnnouncementRepository(ref);

class AnnouncementRepository {
  AnnouncementRepository(this.ref);

  final AnnouncementRepositoryRef ref;

  Future<AnnouncementList> fetchNotificationList() async {
    // Firestoreから（運営からの）お知らせ一覧を取得する
    final snapshot =
        await ref.read(announcementDataSourceProvider).fetchAnnouncementList();

    // Firestoreから取得したデータをドメインモデルに変換する
    final announcements = snapshot.docs
        .map(
          (doc) => AnnouncementDto.fromFirestore(doc).toDomain(),
        )
        .toList();

    // AnnouncementListに変換して返却
    return AnnouncementList(announcements: announcements);
  }
}
