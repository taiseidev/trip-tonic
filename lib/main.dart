// ignore: depend_on_referenced_packages
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/app.dart';
import 'package:trip_tonic/firebase_options_dev.dart' as d;
import 'package:trip_tonic/firebase_options_prod.dart' as p;
import 'package:trip_tonic/utils/constants.dart';

const flavor = String.fromEnvironment('FLAVOR');

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _initFirebase();

  /// 縦固定
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    ProviderScope(
      child: DevicePreview(
        enabled: flavor == dev,
        builder: (context) => const App(),
      ),
    ),
  );
}

// Firebase の初期化
Future<void> _initFirebase() async => Firebase.initializeApp(
      options: flavor == prod
          ? p.DefaultFirebaseOptions.currentPlatform
          : d.DefaultFirebaseOptions.currentPlatform,
    );
