import 'package:flutter/material.dart';
import 'package:recipe_app/model/comment/comment.dart';
import 'package:recipe_app/utils/comment_service.dart';

class CommentNotifier extends ChangeNotifier {
  CommentServiceImpl service;
  CommentNotifier(this.service);
  late Comment comment;
  List<Comment> listComment = [];
  TextEditingController commentController = TextEditingController();
  final formKey = GlobalKey<FormState>(debugLabel: '_commentFormKey');
  Future<List<Comment>> fetchComment(String id) async {
    try {
      listComment = await service.getCommentById(id);
      if (listComment.isEmpty) {
        return listComment;
      } else {
        return listComment;
      }
    } catch (e) {
      throw Exception();
    }
  }

  Future<void> addComments(String id, String comment) async {
    try {
      await service.addComment(id, comment);
      commentController.clear();
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> removeComment(String id) async {
    try {
      await service.deleteComment(id);
      notifyListeners();
    } catch (e) {
      throw Exception(e);
    }
  }
}
