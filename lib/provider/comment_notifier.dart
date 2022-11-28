import 'package:flutter/material.dart';
import 'package:recipe_app/model/comment/comment.dart';
import 'package:recipe_app/utils/comment_service.dart';

class CommentNotifier extends ChangeNotifier {
  CommentServiceImpl service;
  CommentNotifier(this.service);
  late Comment comment;
  List<Comment> listComment = [];
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
}