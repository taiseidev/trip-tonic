// Describe constants related to Firestore

import 'package:riverpod_annotation/riverpod_annotation.dart';

// Providerでクラスを公開することによって余計なインスタンスを生成するのを防ぐ。
final constantsProvider = Provider<Constants>(
  (_) => Constants(),
);

class Constants {
  // Region
  String get region => 'asia-northeast1';
  // Collection
  String get versions => 'versions';
  String get version => 'version';
  String get users => 'users';
  String get genres => 'genres';
  String get notifications => 'notifications';
  String get announcements => 'announcements';
  String get readAnnouncements => 'readAnnouncements';

// Field
  String get userId => 'userId';
  String get notificationId => 'notificationId';
  String get announcementId => 'announcementId';
  String get name => 'name';
  String get email => 'email';

// Function
  String get updateNotificationReadState => 'updateNotificationReadState';
  String get updateAnnouncementReadState => 'updateAnnouncementReadState';
}
