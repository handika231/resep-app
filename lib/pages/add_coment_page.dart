import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/common/app_style.dart';
import 'package:recipe_app/model/recipe_model/recipe_model.dart';
import 'package:recipe_app/provider/comment_notifier.dart';

class AddCommentPage extends StatelessWidget {
  final RecipeModel data;
  const AddCommentPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final commentNotifier =
        Provider.of<CommentNotifier>(context, listen: false);
    return Scaffold(
      body: Form(
        key: commentNotifier.formKey,
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
                  'Tambahkan Komentar',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: AppStyle.medium,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                TextFormField(
                  controller: commentNotifier.commentController,
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
                    if (commentNotifier.formKey.currentState!.validate()) {
                      await commentNotifier
                          .addComments(
                        data.id.toString(),
                        commentNotifier.commentController.text,
                      )
                          .then((value) {
                        Navigator.pop(context);
                      });
                    }
                  },
                  child: const Text(
                    "Komentar",
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
