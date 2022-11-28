import 'package:flutter/material.dart';
import 'package:recipe_app/common/result_state.dart';
import 'package:recipe_app/model/bookmarked/bookmarked.dart';
import 'package:recipe_app/utils/bookmark_service.dart';

class BookmarkNotifier extends ChangeNotifier {
  BookmarkServiceImpl service;
  BookmarkNotifier(this.service) {
    fetchBookmark();
  }
  bool isBookmarked = false;
  List<Bookmarked> listBookmark = [];
  Future<void> addBookmarked(String id) async {
    try {
      await service.addBookmark(id);
      isBookmarked = true;
      notifyListeners();
    } catch (e) {
      throw Exception(e);
    }
  }

  ResultState state = ResultState.NoData;

  Future<List<Bookmarked>> fetchBookmark() async {
    try {
      state = ResultState.Loading;
      notifyListeners();
      listBookmark = await service.getBookmarked();
      if (listBookmark.isEmpty) {
        state = ResultState.NoData;
        notifyListeners();
        return listBookmark;
      } else {
        state = ResultState.HasData;
        notifyListeners();
        return listBookmark;
      }
    } catch (e) {
      state = ResultState.Error;
      notifyListeners();
      throw Exception();
    }
  }

  Future<void> removeBookmarked(String id) async {
    try {
      await service.removeBookmark(id);
      fetchBookmark();
      notifyListeners();
    } catch (e) {
      throw Exception(e);
    }
  }
}
