import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

@freezed
class Comment with _$Comment {
  factory Comment({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'recipe_id') int? recipeId,
    @JsonKey(name: 'parent_id') int? parentId,
    String? comments,
    @JsonKey(name: 'is_active') int? isActive,
    User? user,
    List<dynamic>? child,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}
