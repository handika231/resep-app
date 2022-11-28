import 'package:flutter/material.dart';
import 'package:recipe_app/pages/bookmark_page.dart';

import '../pages/home_page.dart';
import '../pages/profile_page.dart';

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
    const HomePage(),
    const BookmarkPage(),
    const ProfilePage(),
  ];
}
