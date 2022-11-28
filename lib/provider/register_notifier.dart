import 'package:flutter/material.dart';

import '../model/register.dart';
import '../routes/page_route.dart';
import '../utils/user_service.dart';

class RegisterNotifier extends ChangeNotifier {
  late UserServiceImpl userService;
  RegisterNotifier(this.userService);
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  TextEditingController usernameController = TextEditingController();
  String message = '';
  bool isRegister = false;
  bool isVisible = true;
  void changeVisibility() {
    isVisible = !isVisible;
    notifyListeners();
  }

  bool isVisible2 = true;
  void changeVisibility2() {
    isVisible2 = !isVisible2;
    notifyListeners();
  }

  final formKey = GlobalKey<FormState>(debugLabel: '_registerFormKey');
  late Register register;
  Future<void> registerUser(
    String name,
    String username,
    String email,
    String password,
    String passwordConfirmation,
    BuildContext context,
  ) async {
    try {
      isRegister = true;
      notifyListeners();
      register = await userService.register(
        name,
        username,
        email,
        password,
        passwordConfirmation,
      );
      if (register.message == 'Berhasil mendaftarkan akun') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Berhasil Register')),
        );
        Navigation.goBack();
      }

      isRegister = false;
      notifyListeners();
    } catch (e) {
      isRegister = false;
      notifyListeners();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          duration: Duration(seconds: 3),
          content: Text(
            'ERROR: Pastikan password lebih dari 8 karakter, Email atau Username sudah terpakai',
          ),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
