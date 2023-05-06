import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/infrastructure/data_source/remote/firestore/url/url_data_source.dart';
import 'package:trip_tonic/src/infrastructure/utils/constants.dart';

final urlRepositoryProvider = Provider<UrlRepository>(
  (ref) => UrlRepository(
    ref: ref,
    constants: ref.read(constantsProvider),
  ),
);

class UrlRepository {
  UrlRepository({
    required this.ref,
    required this.constants,
  });

  final ProviderRef<UrlRepository> ref;
  final Constants constants;

  Future<String> fetchUrl({
    required UrlType type,
  }) async {
    final snapshot = await ref.read(urlDataSourceProvider).fetchUrl(type: type);
    final url = snapshot.docs.first.data()[constants.url] as String;
    return url;
  }
}
