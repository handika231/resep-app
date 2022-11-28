import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/pages/bookmark_page.dart';

import '../injector.dart' as di;
import '../pages/home_page.dart';
import '../pages/profile_page.dart';
import 'bookmark_notifier.dart';
import 'home_notifier.dart';

class MainNotifier extends ChangeNotifier {
  int currentIndex = 0;
  void onTap(int index) {
    currentIndex = index;
    notifyListeners();
  }

  final List<BottomNavigationBarItem> items = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.bookmark),
      label: 'Bookmark',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ];

  final List<Widget> pages = [
    ChangeNotifierProvider(
      create: (_) => di.locator<HomeNotifier>(),
      child: const HomePage(),
    ),
    ChangeNotifierProvider(
      create: (_) => di.locator<BookmarkNotifier>(),
      child: const BookmarkPage(),
    ),
    const ProfilePage(),
  ];
}
