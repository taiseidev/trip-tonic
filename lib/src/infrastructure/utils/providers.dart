import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Firestoreのインスタンスを公開するためのProvider
final firestoreProvider =
    Provider<FirebaseFirestore>((_) => FirebaseFirestore.instance);

// FirebaseAuthのインスタンスを公開するためのProvider
final firebaseAuthProvider =
    Provider<FirebaseAuth>((_) => FirebaseAuth.instance);
