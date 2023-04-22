import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/src/infrastructure/utils/constants.dart';

// Firestoreのインスタンスを公開するためのProvider
final firestoreProvider =
    Provider<FirebaseFirestore>((_) => FirebaseFirestore.instance);

// FirebaseAuthのインスタンスを公開するためのProvider
final firebaseAuthProvider =
    Provider<FirebaseAuth>((_) => FirebaseAuth.instance);

// FirebaseFunctionsのインスタンスを公開するためのProvider
final firebaseFunctionsProvider = Provider<FirebaseFunctions>(
  (ref) => FirebaseFunctions.instanceFor(
    region: ref.read(constantsProvider).region,
  ),
);
