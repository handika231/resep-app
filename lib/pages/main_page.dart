import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../common/app_style.dart';
import '../common/constant.dart';
import '../provider/main_notifier.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    print(TOKEN);

    return Scaffold(
      bottomNavigationBar: Consumer<MainNotifier>(
        builder: (context, value, child) {
          return BottomNavigationBar(
            selectedItemColor: AppStyle.primaryColor,
            onTap: value.onTap,
            currentIndex: value.currentIndex,
            items: value.items,
          );
        },
      ),
      body: Consumer<MainNotifier>(
        builder: (context, value, child) {
          return value.pages[value.currentIndex];
        },
      ),
    );
  }
}
