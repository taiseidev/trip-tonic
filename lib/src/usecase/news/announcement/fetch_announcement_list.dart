import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/domain/entities/announcement/announcement_list.dart';
import 'package:trip_tonic/src/infrastructure/repositories/announcement/announcement_repository.dart';

// (運営からの)お知らせ一覧を取得
final fetchAnnouncementListProvider =
    FutureProvider.autoDispose<AnnouncementList>(
  (ref) async =>
      ref.read(announcementRepositoryProvider).fetchNotificationList(),
);
