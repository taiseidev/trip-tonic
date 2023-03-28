import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/domain/repositories/auth_repository.dart';
import 'package:trip_tonic/src/infrastructure/data_source/remote/auth/auth_data_source.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl(this.ref);
  final ProviderRef<AuthRepositoryImpl> ref;
  @override
  Future<void> createUser() {
    final authDataSource = ref.read(authDataSourceProvider);
    return authDataSource.createUser();
  }
}

final authRepositoryImplProvider = Provider<AuthRepositoryImpl>(
  AuthRepositoryImpl.new,
);
