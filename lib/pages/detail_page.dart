import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/model/comment/comment.dart';
import 'package:recipe_app/provider/bookmark_notifier.dart';
import 'package:recipe_app/provider/comment_notifier.dart';
import 'package:recipe_app/routes/name_route.dart';
import 'package:recipe_app/routes/page_route.dart';

import '../common/app_style.dart';
import '../common/extension.dart';
import '../model/recipe_model/recipe_model.dart';

class DetailPage extends StatelessWidget {
  final RecipeModel data;
  const DetailPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final bookmarkNotifier =
        Provider.of<BookmarkNotifier>(context, listen: false);
    final commentNotifier =
        Provider.of<CommentNotifier>(context, listen: false);
    print(data.id);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Hero(
                    tag: 'image${data.id}',
                    child: Lottie.asset(
                      'food'.lottie,
                      height: 200.h,
                      width: 1.sw,
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 20,
                    child: Consumer<BookmarkNotifier>(
                      builder: (context, value, child) {
                        return IconButton(
                          icon: const Icon(
                            Icons.bookmark_border,
                            size: 40,
                          ),
                          onPressed: () async {
                            await value.addBookmarked(data.id.toString());
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Berhasil ditambahkan'),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Nama resep: ${data.title}',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: AppStyle.semiBold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Deskripsi resep: ${data.description}',
                      style: TextStyle(
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 0.6,
                color: AppStyle.greyColor,
              ),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Sumber: ${data.source}',
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      'Waktu Memasak: ${data.cookingTime}',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              SizedBox(
                child: FutureBuilder(
                  future: commentNotifier.fetchComment(data.id.toString()),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: Text('Loading...'),
                      );
                    } else if (commentNotifier.listComment.isEmpty) {
                      return Center(
                        child: Text(
                          'Belum ada komentar',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: AppStyle.light,
                          ),
                        ),
                      );
                    } else {
                      List<Comment> comments = snapshot.data;
                      return ListView.separated(
                        separatorBuilder: (context, index) => const Divider(
                          thickness: 0.6,
                          color: AppStyle.greyColor,
                        ),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: comments.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24.w),
                            child: Text(
                              'Komentar: ${comments[index].comments}',
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: AppStyle.light,
                              ),
                            ),
                          );
                        },
                      );
                    }
                  },
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.w,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    fixedSize: Size(200.w, 45.h),
                  ),
                  onPressed: () {
                    Navigation.navigateWithArguments(Routes.editRecipe, data);
                  },
                  child: const Text(
                    "Edit Resep",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
