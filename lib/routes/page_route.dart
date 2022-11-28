//key navigation
import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class Navigation {
  Navigation._();
  static Future navigateToNamed(String routeName) {
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  static Future navigateReplaceNamed(String routeName) {
    return navigatorKey.currentState!
        .pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  static void goBack() {
    return navigatorKey.currentState!.pop();
  }

  static Future navigateWithArguments(String routeName, Object arguments) {
    return navigatorKey.currentState!
        .pushNamed(routeName, arguments: arguments);
  }
}
