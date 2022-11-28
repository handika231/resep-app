// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_ingredient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipeIngredient _$$_RecipeIngredientFromJson(Map<String, dynamic> json) =>
    _$_RecipeIngredient(
      id: json['id'] as int?,
      recipeId: json['recipe_id'] as int?,
      ingredient: json['ingredient'] as String?,
      isActive: json['is_active'] as int?,
    );

Map<String, dynamic> _$$_RecipeIngredientToJson(_$_RecipeIngredient instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recipe_id': instance.recipeId,
      'ingredient': instance.ingredient,
      'is_active': instance.isActive,
    };
