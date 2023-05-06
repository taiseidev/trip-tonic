import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/main.dart';
import 'package:trip_tonic/src/infrastructure/utils/constants.dart';
import 'package:trip_tonic/src/infrastructure/utils/providers.dart';

part 'notification_data_source.g.dart';

@riverpod
NotificationDataSource notificationDataSource(NotificationDataSourceRef ref) =>
    NotificationDataSource(
      db: ref.read(firestoreProvider),
      auth: ref.read(firebaseAuthProvider),
      functions: ref.read(firebaseFunctionsProvider),
      ref: ref,
      constants: ref.read(constantsProvider),
    );

class NotificationDataSource {
  NotificationDataSource({
    required this.db,
    required this.auth,
    required this.functions,
    required this.ref,
    required this.constants,
  });

  final FirebaseFirestore db;
  final FirebaseAuth auth;
  final FirebaseFunctions functions;
  final NotificationDataSourceRef ref;
  final Constants constants;

  // お知らせ一覧を取得
  Future<QuerySnapshot<Map<String, dynamic>>> fetchNotificationList() async {
    final userId = auth.currentUser?.uid;
    // お知らせ一覧を作成日の降順で取得
    final collectionRef = db
        .collection(
          '${constants.versions}/$version/${constants.users}/$userId/${constants.notifications}',
        )
        .orderBy('createdAt', descending: true);
    return collectionRef.get();
  }

  // 新規ユーザのお知らせを作成する
  Future<void> createNotificationForNewUser() async {
    final userId = auth.currentUser?.uid;
    final userName = auth.currentUser?.displayName;
    final docRef = db
        .collection(
          '${constants.versions}/$version/${constants.users}/$userId/${constants.notifications}',
        )
        .doc();

    const guest = 'ゲスト';

    await docRef.set(
      <String, dynamic>{
        constants.notificationId: docRef.id,
        constants.title: '${userName ?? guest}さん！\nダウンロードしていただきありがとうございます🚀',
        constants.content:
            'この度は【Novel Journey】をダウンロードしていただきありがとうございます！\nNovel JourneyはOpenAI社が提供しているgpt-3.5-turboというAPIを活用して、自由に短編小説を作成することができるアプリです。あなたの想像を最大限に膨らまして面白い小説を作成してくださいね！\n\n基本的な使い方は下記をご覧ください。\n使い方説明：https:google.com \n \nまた、困ったことやバグの報告、そのほか質問がありましたら下記のフォームからご連絡ください！\nお問い合わせ：https://google.com \n \n今後ともNovel Journeyをよろしくお願いします！！',
        constants.isRead: false,
        constants.createdAt: DateTime.now(),
      },
    );
  }

  // お知らせを既読にする
  Future<void> updateNotificationReadState({
    required String notificationId,
  }) async {
    await functions
        .httpsCallable(constants.updateNotificationReadState)
        .call<void>({
      constants.userId: auth.currentUser?.uid,
      constants.notificationId: notificationId,
      constants.version: version, // --dart-defineで定義したversionを渡す
    });
  }
}
