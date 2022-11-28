import 'dart:convert';

import 'package:http/http.dart' as http;

import '../common/constant.dart';
import '../model/login.dart';
import '../model/profile.dart';
import '../model/register.dart';

abstract class UserService {
  Future<Profile> fetchProfile();
  Future<Login> login(String email, String password);
  Future<Register> register(String name, String username, String email,
      String password, String passwordConfirmation);
}

class UserServiceImpl implements UserService {
  @override
  Future<Profile> fetchProfile() async {
    final response = await http.get(Uri.parse('$BASE_URL/profile'), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $TOKEN',
    });
    if (response.statusCode == 200) {
      final result = json.decode(response.body)['data'];
      return Profile.fromJson(result);
    } else {
      throw Exception('Failed to load profile');
    }
  }

  @override
  Future<Login> login(String email, String password) async {
    final response = await http.post(Uri.parse('$BASE_URL/login'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: jsonEncode({"email": email, "password": password}));
    if (response.statusCode == 200) {
      final result = (json.decode(response.body))['data'];
      return Login.fromJson(result);
    } else {
      throw Exception('Failed to login');
    }
  }

  @override
  Future<Register> register(
    String name,
    String username,
    String email,
    String password,
    String passwordConfirmation,
  ) async {
    final response = await http.post(
      Uri.parse('$BASE_URL/register'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: jsonEncode(
        {
          "name": name,
          "username": username,
          "email": email,
          "password": password,
          "password_confirmation": passwordConfirmation
        },
      ),
    );
    if (response.statusCode == 200) {
      final result = (json.decode(response.body))['data'];
      return Register.fromJson(result);
    } else {
      throw Exception('Failed to register');
    }
  }
}
