import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../common/app_style.dart';
import '../common/extension.dart';
import '../common/result_state.dart';
import '../model/followers/followers.dart';
import '../provider/followers_notifier.dart';

class FollowersPage extends StatelessWidget {
  const FollowersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer<FollowersNotifier>(
          builder: (context, value, _) {
            switch (value.state) {
              case ResultState.Loading:
                return const Center(child: CircularProgressIndicator());
              case ResultState.HasData:
                return value.followers.isEmpty
                    ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Lottie.asset(
                              'empty'.lottie,
                              width: 1.sw,
                              height: 200.h,
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            const Text('Tidak ada Followers'),
                          ],
                        ),
                      )
                    : ListView.builder(
                        itemCount: value.followers.length,
                        itemBuilder: (context, index) {
                          Followers followers = value.followers[index];
                          return _buildTile(followers, context);
                        },
                      );
              case ResultState.NoData:
                return const Center(child: Text('No Data'));
              case ResultState.Error:
                return const Center(child: Text('Error'));
              default:
                return const Center(child: Text(''));
            }
          },
        ),
      ),
    );
  }

  ListTile _buildTile(Followers followers, context) {
    final provider = Provider.of<FollowersNotifier>(context);
    return ListTile(
      trailing: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppStyle.redColor,
        ),
        onPressed: () async {
          await provider.removeFollowers(followers.id.toString());
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Berhasil menghapus ${followers.user?.name}'),
            ),
          );
        },
        child: const Text(
          "UnFollow",
        ),
      ),
      title: Text(followers.followedUser?.name ?? "Name"),
      subtitle: Text(followers.followedUser?.email ?? "Email"),
    );
  }
}
