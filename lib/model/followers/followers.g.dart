// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'followers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Followers _$$_FollowersFromJson(Map<String, dynamic> json) => _$_Followers(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      followedUserId: json['followed_user_id'] as int?,
      isActive: json['is_active'] as int?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      followedUser: json['followed_user'] == null
          ? null
          : FollowedUser.fromJson(
              json['followed_user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FollowersToJson(_$_Followers instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'followed_user_id': instance.followedUserId,
      'is_active': instance.isActive,
      'user': instance.user,
      'followed_user': instance.followedUser,
    };
