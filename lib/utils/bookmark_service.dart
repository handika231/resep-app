import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:recipe_app/common/constant.dart';
import 'package:recipe_app/model/bookmarked/bookmarked.dart';

abstract class BookmarkService {
  Future<void> addBookmark(String id);
  Future<void> removeBookmark(String id);
  Future<List<Bookmarked>> getBookmarked();
}

class BookmarkServiceImpl implements BookmarkService {
  @override
  Future<void> addBookmark(String id) async {
    try {
      await http.post(
        Uri.parse('$BASE_URL/recipe/bookmark/store'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $TOKEN',
        },
        body: jsonEncode(
          {"recipe_id": id},
        ),
      );
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> removeBookmark(String id) async {
    await http.delete(
      Uri.parse('$BASE_URL/recipe/bookmark/$id/destroy'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $TOKEN',
      },
    );
  }

  @override
  Future<List<Bookmarked>> getBookmarked() async {
    final response =
        await http.get(Uri.parse('$BASE_URL/recipe/bookmark/show'), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $TOKEN',
    });
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data'];
      return data.map((json) => Bookmarked.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }
}
