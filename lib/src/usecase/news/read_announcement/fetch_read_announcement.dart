import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/domain/entities/read_announcement/read_announcement_list.dart';
import 'package:trip_tonic/src/infrastructure/repositories/readAnnouncement/read_announcement_repository.dart';

// (運営からの)お知らせの既読一覧を取得
final fetchReadAnnouncementListProvider =
    FutureProvider.autoDispose<ReadAnnouncementList>(
  (ref) async =>
      ref.read(readAnnouncementRepositoryProvider).fetchReadAnnouncementList(),
);
