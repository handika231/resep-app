import 'package:flutter/material.dart';

import '../common/result_state.dart';
import '../model/followers/followers.dart';
import '../utils/follow_helper.dart';
import '../utils/followers_service.dart';

class FollowersNotifier extends ChangeNotifier {
  FollowersServiceImpl service;
  FollowHelper helper;
  FollowersNotifier(this.service, this.helper) {
    fetchFollowers();
    checkFollowers();
  }

  ResultState state = ResultState.NoData;

  List<Followers> followers = [];
  Future<List<Followers>> fetchFollowers() async {
    try {
      state = ResultState.Loading;
      notifyListeners();
      followers = await service.showFollowers();
      state = ResultState.HasData;
      notifyListeners();
      return followers;
    } catch (e) {
      state = ResultState.Error;
      notifyListeners();
      throw Exception(e);
    }
  }

  bool isFollow = false;
  Future<void> addFollowers(String id) async {
    try {
      await service.followUser(id);
      isFollow = true;
      helper.saveFollowers(isFollow);
      notifyListeners();
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> checkFollowers() async {
    isFollow = await helper.getFollowers();
    notifyListeners();
  }

  Future<void> removeFollowers(String id) async {
    try {
      await service.unFollowUser(id);
      isFollow = false;
      helper.saveFollowers(isFollow);
      fetchFollowers();

      notifyListeners();
    } catch (e) {
      throw Exception(e);
    }
  }
}
