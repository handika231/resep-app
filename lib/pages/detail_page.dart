import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/model/comment/comment.dart';
import 'package:recipe_app/pages/add_coment_page.dart';
import 'package:recipe_app/pages/edit_comment_page.dart';
import 'package:recipe_app/provider/bookmark_notifier.dart';
import 'package:recipe_app/provider/comment_notifier.dart';
import 'package:recipe_app/routes/name_route.dart';
import 'package:recipe_app/routes/page_route.dart';

import '../common/app_style.dart';
import '../common/extension.dart';
import '../model/recipe_model/recipe_model.dart';

class DetailPage extends StatefulWidget {
  final RecipeModel data;
  const DetailPage({super.key, required this.data});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Provider.of<BookmarkNotifier>(context, listen: false);
    final commentNotifier =
        Provider.of<CommentNotifier>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Hero(
                    tag: 'image${widget.data.id}',
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
                            await value
                                .addBookmarked(widget.data.id.toString());
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
                      'Nama resep: ${widget.data.title}',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: AppStyle.semiBold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Deskripsi resep: ${widget.data.description}',
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
                      'Sumber: ${widget.data.source}',
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      'Waktu Memasak: ${widget.data.cookingTime}',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              SizedBox(
                child: FutureBuilder(
                  future:
                      commentNotifier.fetchComment(widget.data.id.toString()),
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
                          return _itemComment(comments, index);
                        },
                      );
                    }
                  },
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.w,
                ),
                child: TextButton(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddCommentPage(data: widget.data),
                      ),
                    );
                    setState(() {});
                  },
                  child: const Text('Tambahkan komentar'),
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
                  onPressed: () async {
                    await Navigation.navigateWithArguments(
                      Routes.editRecipe,
                      widget.data,
                    );
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

  _itemComment(List<Comment> comments, int index) {
    Provider.of<CommentNotifier>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: ListTile(
        onTap: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return EditCommentPage(
                  comment: comments[index],
                );
              },
            ),
          );
          setState(() {});
        },
        title: Text(
          'Komentar: ${comments[index].comments}',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: AppStyle.light,
          ),
        ),
        trailing: IconButton(
          onPressed: () {
            context.read<CommentNotifier>().removeComment(
                  comments[index].id.toString(),
                );
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Berhasil dihapus'),
              ),
            );
          },
          icon: const Icon(
            Icons.delete,
            color: AppStyle.redColor,
          ),
        ),
      ),
    );
  }
}
