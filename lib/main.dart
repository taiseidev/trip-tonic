import 'package:device_preview/device_preview.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:trip_tonic/color_schemes.g.dart';
import 'package:trip_tonic/firebase_options_dev.dart' as dev;
import 'package:trip_tonic/firebase_options_prod.dart' as prod;

const flavor = String.fromEnvironment('FLAVOR');

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Flavor に応じた FirebaseOptions を準備する
  final firebaseOptions = flavor == 'prod'
      ? prod.DefaultFirebaseOptions.currentPlatform
      : dev.DefaultFirebaseOptions.currentPlatform;

  // Firebase の初期化
  await Firebase.initializeApp(
    options: firebaseOptions,
  );

  // FirebaseUser を取得する
  final firebaseUser = await FirebaseAuth.instance.userChanges().first;
  print('uid = ${firebaseUser?.uid}');
  if (firebaseUser == null) {
    // 未サインインなら匿名ユーザーでサインインする
    final credential = await FirebaseAuth.instance.signInAnonymously();
    final uid = credential.user!.uid;
    print('Signed in: uid = $uid');
  }

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      home: const MyAppa(),
    );
  }
}

class MyAppa extends StatelessWidget {
  const MyAppa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
      ),
      body: const Center(
        child: Text('テスト'),
      ),
    );
  }
}
