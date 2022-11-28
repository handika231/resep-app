import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:recipe_app/common/constant.dart';
import 'package:recipe_app/model/comment/comment.dart';

abstract class CommentService {
  Future<List<Comment>> getCommentById(String id);
  Future<void> addComment(String id, String comment);
  Future<void> deleteComment(String id);
  Future<void> updateComment(String id, String comment, String recipeId);
}

class CommentServiceImpl implements CommentService {
  @override
  Future<List<Comment>> getCommentById(String id) async {
    final response = await http.get(
      Uri.parse('$BASE_URL/recipe/comment/show?recipe_id=$id'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $TOKEN',
      },
    );

    if (response.statusCode == 200) {
      List result = json.decode(response.body)['data'];
      return result.map((data) => Comment.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Future<void> addComment(String id, String comment) async {
    await http.post(
      Uri.parse('$BASE_URL/recipe/comment/store'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $TOKEN',
      },
      body: jsonEncode(
        {"recipe_id": id, "comments": comment},
      ),
    );
  }

  @override
  Future<void> deleteComment(String id) async {
    await http.delete(
      Uri.parse('$BASE_URL/recipe/comment/$id/destroy'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $TOKEN',
      },
    );
  }

  @override
  Future<void> updateComment(String id, String comment, String recipeId) async {
    await http.post(
      Uri.parse('$BASE_URL/recipe/comment/$id/update'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $TOKEN',
      },
      body: jsonEncode(
        {"recipe_id": recipeId, "comments": comment},
      ),
    );
  }
}
