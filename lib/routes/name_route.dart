import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/pages/edit_recipe_page.dart';
import 'package:recipe_app/provider/edit_recipe_notifier.dart';

import '../injector.dart' as di;
import '../pages/add_recipe_page.dart';
import '../pages/detail_page.dart';
import '../pages/followers_page.dart';
import '../pages/login_page.dart';
import '../pages/main_page.dart';
import '../pages/profile_page.dart';
import '../pages/register_page.dart';
import '../provider/add_recipe_notifier.dart';
import '../provider/followers_notifier.dart';
import '../provider/login_notifier.dart';
import '../provider/main_notifier.dart';
import '../provider/register_notifier.dart';

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
    main: (_) => ChangeNotifierProvider<MainNotifier>(
          create: (_) => MainNotifier(),
          child: const MainPage(),
        ),
    login: (_) => ChangeNotifierProvider(
          create: (_) => di.locator<LoginNotifier>(),
          child: const LoginPage(),
        ),
    register: (_) => ChangeNotifierProvider(
          create: (_) => di.locator<RegisterNotifier>(),
          child: const RegisterPage(),
        ),
    profile: (_) => const ProfilePage(),
    followers: (_) => ChangeNotifierProvider(
          create: (_) => di.locator<FollowersNotifier>(),
          child: const FollowersPage(),
        ),
    detail: (_) => const DetailPage(),
    addRecipe: (_) => ChangeNotifierProvider<AddRecipeNotifier>(
          child: const AddRecipePage(),
          create: (_) => di.locator<AddRecipeNotifier>(),
        ),
    editRecipe: (_) => ChangeNotifierProvider<EditRecipeNotifier>(
          child: const EditRecipePage(),
          create: (_) => di.locator<EditRecipeNotifier>(),
        ),
  };
}
