import 'dart:convert';

import 'package:http/http.dart' as http;

import '../common/constant.dart';
import '../model/recipe_model/recipe_model.dart';

abstract class RecipeService {
  Future<List<RecipeModel>> fetchRecipe();
  Future<void> deleteRecipe(String id);
  Future<void> addRecipe(
      String title, String description, String source, String time);
}

class RecipeServiceImpl implements RecipeService {
  @override
  Future<List<RecipeModel>> fetchRecipe() async {
    final response = await http.get(
        Uri.parse(
          '$BASE_URL/recipe',
        ),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $TOKEN',
        });
    if (response.statusCode == 200) {
      List result = (json.decode(response.body)['data']);
      return result.map((data) => RecipeModel.fromJson(data)).toList();
    } else {
      throw Exception();
    }
  }

  @override
  Future<void> deleteRecipe(String id) async {
    await http.delete(Uri.parse('$BASE_URL/recipe/$id/destroy'), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $TOKEN',
    });
  }

  @override
  Future<void> addRecipe(
      String title, String description, String source, String time) async {
    final response = await http.post(Uri.parse('$BASE_URL/recipe/store'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $TOKEN',
        },
        body: jsonEncode({
          'title': title,
          'description': description,
          'source': source,
          'cooking_time': time,
        }));
    if (response.statusCode == 200) {
      return json.decode(response.body)['data'];
    } else {
      throw Exception();
    }
  }
}
