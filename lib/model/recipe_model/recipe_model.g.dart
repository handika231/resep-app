// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipeModel _$$_RecipeModelFromJson(Map<String, dynamic> json) =>
    _$_RecipeModel(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      recipeImage: json['recipe_image'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      source: json['source'] as String?,
      cookingTime: json['cooking_time'] as String?,
      totalVisitor: json['total_visitor'] as int?,
      recipeComment: json['recipe_comment'] as List<dynamic>?,
      recipeIngredient: (json['recipe_ingredient'] as List<dynamic>?)
          ?.map((e) => RecipeIngredient.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RecipeModelToJson(_$_RecipeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'recipe_image': instance.recipeImage,
      'title': instance.title,
      'description': instance.description,
      'source': instance.source,
      'cooking_time': instance.cookingTime,
      'total_visitor': instance.totalVisitor,
      'recipe_comment': instance.recipeComment,
      'recipe_ingredient': instance.recipeIngredient,
    };
