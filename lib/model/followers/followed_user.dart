import 'package:freezed_annotation/freezed_annotation.dart';

part 'followed_user.freezed.dart';
part 'followed_user.g.dart';

@freezed
class FollowedUser with _$FollowedUser {
  factory FollowedUser({
    int? id,
    String? name,
    String? username,
    String? email,
  }) = _FollowedUser;

  factory FollowedUser.fromJson(Map<String, dynamic> json) =>
      _$FollowedUserFromJson(json);
}
