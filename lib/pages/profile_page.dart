import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../common/app_style.dart';
import '../common/extension.dart';
import '../common/result_state.dart';
import '../injector.dart' as di;
import '../provider/followers_notifier.dart';
import '../provider/profile_notifier.dart';
import '../routes/name_route.dart';
import '../routes/page_route.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<FollowersNotifier>(
      create: (_) => di.locator<FollowersNotifier>(),
      child: ChangeNotifierProvider(
        create: (_) => di.locator<ProfileNotifier>(),
        child: Consumer<ProfileNotifier>(
          builder: (context, value, child) {
            switch (value.state) {
              case ResultState.NoData:
                return const Center(child: Text('No Data'));
              case ResultState.Loading:
                return const Center(child: CircularProgressIndicator());
              case ResultState.HasData:
                return _buildContent(value, context);
              default:
                return Center(
                  child: Text(value.message),
                );
            }
          },
        ),
      ),
    );
  }

  Widget _buildContent(ProfileNotifier value, context) {
    final followers = Provider.of<FollowersNotifier>(context);
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 24.h,
              ),
              CircleAvatar(
                radius: 50.r,
                backgroundColor: AppStyle.greyColor,
                child: CircleAvatar(
                  radius: 45.r,
                  backgroundImage: AssetImage(
                    'person'.png,
                  ),
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              followers.isFollow
                  ? ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppStyle.greyColor,
                      ),
                      onPressed: null,
                      child: const Text(
                        "Anda memfollow user",
                      ),
                    )
                  : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppStyle.greenColor,
                      ),
                      onPressed: () {
                        followers.addFollowers(value.profile.id.toString());
                      },
                      child: const Text(
                        "Follow User",
                      ),
                    ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                'Nama: ${value.profile.name}',
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Email: ${value.profile.email}',
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                'Followers',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: AppStyle.semiBold,
                ),
              ),
              ListTile(
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () async {
                  await Navigation.navigateToNamed(Routes.followers);
                  followers.checkFollowers();
                },
                contentPadding: EdgeInsets.zero,
                title: const Text('Lihat jumlah followers'),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                'Logout',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: AppStyle.semiBold,
                ),
              ),
              ListTile(
                trailing: const Icon(Icons.logout),
                onTap: () => value.logOut(),
                contentPadding: EdgeInsets.zero,
                title: const Text('Keluar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
