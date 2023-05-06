import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/infrastructure/data_source/remote/firestore/url/url_data_source.dart';
import 'package:trip_tonic/src/infrastructure/repositories/url/url_repository.dart';

final fetchUrlUseCaseProvider = Provider<FetchUrlUseCase>(FetchUrlUseCase.new);

class FetchUrlUseCase {
  FetchUrlUseCase(this.ref);
  final ProviderRef<FetchUrlUseCase> ref;

  Future<String> call({required UrlType type}) async =>
      ref.read(urlRepositoryProvider).fetchUrl(type: type);
}
