import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/common/constant.dart';
import 'package:recipe_app/provider/home_notifier.dart';
import 'package:recipe_app/provider/main_notifier.dart';
import 'package:recipe_app/provider/profile_notifier.dart';
import 'package:recipe_app/utils/login_helper.dart';

import 'injector.dart' as di;
import 'provider/add_recipe_notifier.dart';
import 'provider/bookmark_notifier.dart';
import 'provider/comment_notifier.dart';
import 'provider/edit_comment_notifier.dart';
import 'provider/edit_recipe_notifier.dart';
import 'provider/followers_notifier.dart';
import 'provider/login_notifier.dart';
import 'provider/register_notifier.dart';
import 'routes/name_route.dart';
import 'routes/page_route.dart';

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  Future<String> checkLogin() async {
    final loginHelper = di.locator<LoginHelper>();
    TOKEN = await loginHelper.getLogin();
    return TOKEN;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: checkLogin(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting ||
            snapshot.data == null) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Recipe App',
            home: Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        } else {
          return ScreenUtilInit(
            designSize: const Size(360, 690),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context, child) {
              return MultiProvider(
                providers: [
                  ChangeNotifierProvider(
                    create: (_) => di.locator<BookmarkNotifier>(),
                  ),
                  ChangeNotifierProvider(
                    create: (_) => MainNotifier(),
                  ),
                  ChangeNotifierProvider(
                    create: (_) => di.locator<LoginNotifier>(),
                  ),
                  ChangeNotifierProvider(
                    create: (_) => di.locator<RegisterNotifier>(),
                  ),
                  ChangeNotifierProvider(
                    create: (_) => di.locator<FollowersNotifier>(),
                  ),
                  ChangeNotifierProvider(
                    create: (_) => di.locator<AddRecipeNotifier>(),
                  ),
                  ChangeNotifierProvider(
                    create: (_) => di.locator<EditRecipeNotifier>(),
                  ),
                  ChangeNotifierProvider(
                    create: (_) => di.locator<ProfileNotifier>(),
                  ),
                  ChangeNotifierProvider(
                    create: (_) => di.locator<HomeNotifier>(),
                  ),
                  ChangeNotifierProvider(
                    create: (_) => di.locator<CommentNotifier>(),
                  ),
                  ChangeNotifierProvider(
                    create: (_) => di.locator<EditCommentNotifier>(),
                  ),
                ],
                child: MaterialApp(
                  navigatorKey: navigatorKey,
                  routes: Routes.routes,
                  title: 'Recipe App',
                  initialRoute: TOKEN.isNotEmpty ? Routes.main : Routes.login,
                  debugShowCheckedModeBanner: false,
                ),
              );
            },
          );
        }
      },
    );
  }
}
