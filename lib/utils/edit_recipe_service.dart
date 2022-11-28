import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:recipe_app/common/constant.dart';

abstract class EditRecipeService {
  Future<void> editRecipe(
      String id, String title, String description, String source, String time);
}

class EditRecipeServiceImpl implements EditRecipeService {
  @override
  Future<void> editRecipe(String id, String title, String description,
      String source, String time) async {
    await http.post(
      Uri.parse('$BASE_URL/recipe/$id/update'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $TOKEN',
      },
      body: jsonEncode(
        {
          "title": title,
          "description": description,
          'source': source,
          'cooking_time': time,
        },
      ),
    );
  }
}
