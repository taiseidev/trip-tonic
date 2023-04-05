import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/domain/entities/models.dart';

// APIから画像情報を取得するFutureProvider
final imageProvider = FutureProvider<SearchResult>((ref) async {
  final response = await http.get(
    Uri.parse(
      'https://pixabay.com/api/?key=35072701-2a8a0408a47d5be6ef991fb6f&q=ファンタジー&image_type=photo',
    ),
  );
  if (response.statusCode == 200) {
    return SearchResult.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );
  } else {
    throw Exception('Failed to load images');
  }
});
