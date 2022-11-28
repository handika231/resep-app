import 'dart:convert';

import 'package:http/http.dart' as http;

import '../common/constant.dart';
import '../model/followers/followers.dart';

abstract class FollowersService {
  Future<List<Followers>> showFollowers();
  Future<void> followUser(String id);
  Future<void> unFollowUser(String id);
}

class FollowersServiceImpl implements FollowersService {
  @override
  Future<List<Followers>> showFollowers() async {
    final response =
        await http.get(Uri.parse('$BASE_URL/user/followed/show'), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $TOKEN',
    });
    if (response.statusCode == 200) {
      List result = (json.decode(response.body)['data']);
      return result.map((data) => Followers.fromJson(data)).toList();
    } else {
      throw Exception();
    }
  }

  @override
  Future<void> followUser(String id) async {
    final response = await http.post(
      Uri.parse('$BASE_URL/user/followed/store'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $TOKEN',
      },
      body: jsonEncode(
        {"followed_user_id": id},
      ),
    );
    if (response.statusCode == 200) {
      return json.decode(response.body)['data'];
    } else {
      throw Exception();
    }
  }

  @override
  Future<void> unFollowUser(String id) async {
    await http.delete(
      Uri.parse('$BASE_URL/user/followed/$id/destroy'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $TOKEN',
      },
    );
  }
}
