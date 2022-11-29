import 'package:recipe_app/common/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginHelper {
  Future<void> saveLogin(String token) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('isLogin', token);
  }

  Future<String> getLogin() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('isLogin') ?? TOKEN;
  }
}
