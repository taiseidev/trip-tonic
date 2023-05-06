// ignore: depend_on_referenced_packages
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trip_tonic/core/utils/constants.dart';
import 'package:trip_tonic/core/utils/logger.dart';
import 'package:trip_tonic/firebase_options_dev.dart' as development;
import 'package:trip_tonic/firebase_options_prod.dart' as production;
import 'package:trip_tonic/src/infrastructure/repositories/story/story_repository_mock.dart';
import 'package:trip_tonic/src/infrastructure/repositories/story/story_repository_provider.dart';
import 'package:trip_tonic/src/presentation/app.dart';

import 'src/infrastructure/helpers/shared_preference/shared_preference_helper.dart';

// --dart-define options
const flavor = String.fromEnvironment('FLAVOR');
const version = String.fromEnvironment('VERSION');
const isMock = bool.fromEnvironment('IS_MOCK');

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await FlutterConfig.loadEnvVariables();
  await _initFirebase();

  // ユーザ情報を取得する。

  /// 縦固定
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  final sharedPreferences = await SharedPreferences.getInstance();

  runApp(
    ProviderScope(
      overrides: [
        storyRepositoryProvider.overrideWith(StoryRepositoryMock.new),
        sharedPreferencesRepositoryProvider.overrideWithValue(
          SharedPreferencesRepository(sharedPreferences),
        ),
      ],
      observers: [ProviderLogger()],
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
          ? production.DefaultFirebaseOptions.currentPlatform
          : development.DefaultFirebaseOptions.currentPlatform,
    );
