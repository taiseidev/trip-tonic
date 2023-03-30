import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user.freezed.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required String userId,
    required String name,
    String? iconUrl,
    String? email,
    @Default(false) bool isPremium,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _AppUser;
}
