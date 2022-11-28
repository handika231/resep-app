import 'package:flutter/material.dart';

import '../common/constant.dart';
import '../model/login.dart';
import '../routes/name_route.dart';
import '../routes/page_route.dart';
import '../utils/user_service.dart';

class LoginNotifier extends ChangeNotifier {
  final UserServiceImpl userService;
  LoginNotifier(this.userService);

  bool isVisible = true;
  void changeVisibility() {
    isVisible = !isVisible;
    notifyListeners();
  }

  //key form
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLogin = false;

  late Login login;
  Future<void> loginUser(
      String email, String password, BuildContext context) async {
    try {
      isLogin = true;
      notifyListeners();
      login = await userService.login(email, password);
      if (login.apiToken != null) {
        TOKEN = login.apiToken ?? '';
        Navigation.navigateReplaceNamed(Routes.main);
      }
      isLogin = false;
      notifyListeners();
    } catch (e) {
      isLogin = false;
      notifyListeners();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
