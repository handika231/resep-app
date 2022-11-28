// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmarked.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Bookmarked _$$_BookmarkedFromJson(Map<String, dynamic> json) =>
    _$_Bookmarked(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      recipeId: json['recipe_id'] as int?,
      isActive: json['is_active'] as int?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      recipe: json['recipe'] == null
          ? null
          : RecipeModel.fromJson(json['recipe'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BookmarkedToJson(_$_Bookmarked instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'recipe_id': instance.recipeId,
      'is_active': instance.isActive,
      'user': instance.user,
      'recipe': instance.recipe,
    };
