import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user.freezed.dart';
part 'app_user.g.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    String? userId,
    String? iconUrl,
    String? email,
    @Default(false) bool isPremium,
    @Default(false) bool pushAnnouncementEnabled,
    @Default(false) bool pushNotificationEnabled,
    // required DateTime createdAt,
    // required DateTime updatedAt,
  }) = _AppUser;
  const AppUser._();
  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
}
