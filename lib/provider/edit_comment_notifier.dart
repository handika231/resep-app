import 'package:flutter/material.dart';
import 'package:recipe_app/utils/comment_service.dart';

class EditCommentNotifier extends ChangeNotifier {
  CommentServiceImpl service;
  EditCommentNotifier(this.service);
  TextEditingController commentController = TextEditingController();

  final formKey = GlobalKey<FormState>(debugLabel: '_editCommentFormKey');
  Future<void> editComment(String id, String comment, String recipeId) async {
    try {
      await service.updateComment(id, comment, recipeId);
      commentController.clear();
    } catch (e) {
      throw Exception();
    }
  }
}
