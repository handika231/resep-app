import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/common/extension.dart';
import 'package:recipe_app/common/result_state.dart';
import 'package:recipe_app/model/bookmarked/bookmarked.dart';

import '../provider/bookmark_notifier.dart';

class BookmarkPage extends StatefulWidget {
  const BookmarkPage({super.key});

  @override
  State<BookmarkPage> createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () =>
          Provider.of<BookmarkNotifier>(context, listen: false).fetchBookmark(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bookmarkNotifier =
        Provider.of<BookmarkNotifier>(context, listen: false);
    return SafeArea(child: Consumer<BookmarkNotifier>(
      builder: (context, value, child) {
        switch (value.state) {
          case ResultState.NoData:
            return Center(
              child: Lottie.asset(
                'empty'.lottie,
                height: 300.h,
                width: 1.sw,
              ),
            );
          case ResultState.HasData:
            return ListView.builder(
              itemCount: bookmarkNotifier.listBookmark.length,
              itemBuilder: (BuildContext context, int index) {
                Bookmarked bookmark = bookmarkNotifier.listBookmark[index];
                return _buildTile(bookmarkNotifier, bookmark, context);
              },
            );
          default:
            return const Center(
              child: CircularProgressIndicator(),
            );
        }
      },
    ));
  }

  Widget _buildTile(
      BookmarkNotifier value, Bookmarked bookmark, BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      elevation: 8,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Lottie.asset(
              'food'.lottie,
              height: 150.h,
              width: 150.h,
            ),
          ),
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nama Resep: ${bookmark.recipe?.title}'),
                SizedBox(
                  height: 8.h,
                ),
                Text('Deskripsi: ${bookmark.recipe?.description}'),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Hapus'),
                    content: const Text('Apakah anda yakin ingin menghapus?'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Tidak'),
                      ),
                      TextButton(
                        onPressed: () async {
                          await value.removeBookmarked(bookmark.id.toString());
                          Navigator.pop(context);
                        },
                        child: const Text('Ya'),
                      ),
                    ],
                  );
                },
              );
            },
            icon: const Icon(
              Icons.delete,
              color: Colors.red,
              size: 40,
            ),
          )
        ],
      ),
    );
  }
}
