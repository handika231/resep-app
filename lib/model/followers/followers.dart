import 'package:freezed_annotation/freezed_annotation.dart';

import 'followed_user.dart';
import 'user.dart';

part 'followers.freezed.dart';
part 'followers.g.dart';

@freezed
class Followers with _$Followers {
  factory Followers({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'followed_user_id') int? followedUserId,
    @JsonKey(name: 'is_active') int? isActive,
    User? user,
    @JsonKey(name: 'followed_user') FollowedUser? followedUser,
  }) = _Followers;

  factory Followers.fromJson(Map<String, dynamic> json) =>
      _$FollowersFromJson(json);
}
