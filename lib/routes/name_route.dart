import 'package:flutter/material.dart';
import 'package:recipe_app/pages/edit_recipe_page.dart';

import '../pages/add_recipe_page.dart';
import '../pages/followers_page.dart';
import '../pages/login_page.dart';
import '../pages/main_page.dart';
import '../pages/profile_page.dart';
import '../pages/register_page.dart';

class Routes {
  Routes._();
  static const String main = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String profile = '/profile';
  static const String followers = '/followers';
  static const String detail = '/detail';
  static const String addRecipe = '/addRecipe';
  static const String editRecipe = '/editRecipe';
  static final routes = <String, WidgetBuilder>{
    main: (_) => const MainPage(),
    login: (_) => const LoginPage(),
    register: (_) => const RegisterPage(),
    profile: (_) => const ProfilePage(),
    followers: (_) => const FollowersPage(),
    addRecipe: (_) => const AddRecipePage(),
    editRecipe: (_) => const EditRecipePage(),
  };
}
