// ignore: depend_on_referenced_packages
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trip_tonic/app.dart';
import 'package:trip_tonic/firebase_options_dev.dart' as d;
import 'package:trip_tonic/firebase_options_prod.dart' as p;
import 'package:trip_tonic/utils/constants.dart';

const flavor = String.fromEnvironment('FLAVOR');

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _initFirebase();

  runApp(
    ProviderScope(
      child: DevicePreview(
        enabled: flavor == dev,
        builder: (context) => const TripTonic(),
      ),
    ),
  );
}

// Firebase の初期化
Future<void> _initFirebase() async {
  final options = flavor == prod
      ? p.DefaultFirebaseOptions.currentPlatform
      : d.DefaultFirebaseOptions.currentPlatform;

  await Firebase.initializeApp(options: options);
}
