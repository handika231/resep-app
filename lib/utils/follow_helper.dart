import 'package:shared_preferences/shared_preferences.dart';

class FollowHelper {
  Future<void> saveFollowers(bool isFollow) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('followers', isFollow);
  }

  Future<bool> getFollowers() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('followers') ?? false;
  }
}
