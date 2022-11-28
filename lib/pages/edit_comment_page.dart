import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../common/app_style.dart';
import '../model/comment/comment.dart';
import '../provider/edit_comment_notifier.dart';

class EditCommentPage extends StatelessWidget {
  final Comment comment;
  const EditCommentPage({super.key, required this.comment});

  @override
  Widget build(BuildContext context) {
    final editNotifier = Provider.of<EditCommentNotifier>(context);
    editNotifier.commentController.text = comment.comments.toString();
    return Scaffold(
      body: Form(
        key: editNotifier.formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.w,
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Edit Komentar',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: AppStyle.medium,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                TextFormField(
                  controller: editNotifier.commentController,
                  maxLines: 10,
                  validator: (value) =>
                      value!.isEmpty ? 'Please enter some text' : null,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppStyle.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    fixedSize: Size(200.w, 45.h),
                  ),
                  onPressed: () async {
                    if (editNotifier.formKey.currentState!.validate()) {
                      await editNotifier
                          .editComment(
                        comment.userId.toString(),
                        editNotifier.commentController.text,
                        comment.recipeId.toString(),
                      )
                          .then(
                        (value) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Komentar berhasil diubah'),
                            ),
                          );
                          Navigator.pop(context);
                        },
                      );
                    }
                  },
                  child: const Text(
                    "Edit Komentar",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
