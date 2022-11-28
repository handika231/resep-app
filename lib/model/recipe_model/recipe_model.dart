import 'package:freezed_annotation/freezed_annotation.dart';

import 'recipe_ingredient.dart';

part 'recipe_model.freezed.dart';
part 'recipe_model.g.dart';

@freezed
class RecipeModel with _$RecipeModel {
  factory RecipeModel({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'recipe_image') String? recipeImage,
    String? title,
    String? description,
    String? source,
    @JsonKey(name: 'cooking_time') String? cookingTime,
    @JsonKey(name: 'total_visitor') int? totalVisitor,
    @JsonKey(name: 'recipe_comment') List<dynamic>? recipeComment,
    @JsonKey(name: 'recipe_ingredient')
        List<RecipeIngredient>? recipeIngredient,
  }) = _RecipeModel;

  factory RecipeModel.fromJson(Map<String, dynamic> json) =>
      _$RecipeModelFromJson(json);
}
