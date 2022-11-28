import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_ingredient.freezed.dart';
part 'recipe_ingredient.g.dart';

@freezed
class RecipeIngredient with _$RecipeIngredient {
  factory RecipeIngredient({
    int? id,
    @JsonKey(name: 'recipe_id') int? recipeId,
    String? ingredient,
    @JsonKey(name: 'is_active') int? isActive,
  }) = _RecipeIngredient;

  factory RecipeIngredient.fromJson(Map<String, dynamic> json) =>
      _$RecipeIngredientFromJson(json);
}
