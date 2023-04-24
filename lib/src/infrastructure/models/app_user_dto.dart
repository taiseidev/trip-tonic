import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tonic/src/domain/entities/app_user.dart';
import 'package:trip_tonic/src/infrastructure/utils/timestamp_converter.dart';

part 'app_user_dto.freezed.dart';

@freezed
class AppUserDTO with _$AppUserDTO {
  const factory AppUserDTO({
    required String userId,
    required String name,
    String? iconUrl,
    String? email,
    @TimestampConverter() required DateTime createdAt,
    @TimestampConverter() required DateTime updatedAt,
  }) = _AppUserDTO;
  const AppUserDTO._();

  Future<AppUser> toDomain() async {
    final hasPremium = await isPremium();
    return AppUser(
      isPremium: hasPremium,
      // createdAt: DateTime.now(),
      // updatedAt: DateTime.now(),
    );
  }

  Future<bool> isPremium() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final tokenResult = await user.getIdTokenResult();
      final claims = tokenResult.claims;
      if (claims!.containsKey('isPremium')) {
        return claims['isPremium'] as bool;
      }
    }
    return false;
  }
}
