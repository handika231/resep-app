import 'package:flutter/material.dart';

import '../common/constant.dart';
import '../common/result_state.dart';
import '../model/profile.dart';
import '../routes/name_route.dart';
import '../routes/page_route.dart';
import '../utils/user_service.dart';

class ProfileNotifier extends ChangeNotifier {
  UserServiceImpl apiService;
  ResultState state = ResultState.NoData;
  late Profile profile;
  String message = '';
  ProfileNotifier(this.apiService) {
    fetchProfile();
  }

  Future<Profile> fetchProfile() async {
    try {
      state = ResultState.Loading;
      notifyListeners();
      profile = await apiService.fetchProfile();
      state = ResultState.HasData;
      notifyListeners();
      return profile;
    } catch (e) {
      state = ResultState.Error;
      message = e.toString();
      notifyListeners();
      throw Exception(e);
    }
  }

  void logOut() {
    TOKEN = '';
    Navigation.navigateReplaceNamed(Routes.login);
  }
}
