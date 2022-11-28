import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/model/recipe_model/recipe_model.dart';

import 'user.dart';

part 'bookmarked.freezed.dart';
part 'bookmarked.g.dart';

@freezed
class Bookmarked with _$Bookmarked {
  factory Bookmarked({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'recipe_id') int? recipeId,
    @JsonKey(name: 'is_active') int? isActive,
    User? user,
    RecipeModel? recipe,
  }) = _Bookmarked;

  factory Bookmarked.fromJson(Map<String, dynamic> json) =>
      _$BookmarkedFromJson(json);
}
