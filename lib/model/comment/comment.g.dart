// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Comment _$$_CommentFromJson(Map<String, dynamic> json) => _$_Comment(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      recipeId: json['recipe_id'] as int?,
      parentId: json['parent_id'] as int?,
      comments: json['comments'] as String?,
      isActive: json['is_active'] as int?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      child: json['child'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_CommentToJson(_$_Comment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'recipe_id': instance.recipeId,
      'parent_id': instance.parentId,
      'comments': instance.comments,
      'is_active': instance.isActive,
      'user': instance.user,
      'child': instance.child,
    };
