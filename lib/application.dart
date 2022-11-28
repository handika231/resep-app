import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'injector.dart' as di;
import 'provider/bookmark_notifier.dart';
import 'routes/name_route.dart';
import 'routes/page_route.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (_) => di.locator<BookmarkNotifier>(),
            )
          ],
          child: MaterialApp(
            navigatorKey: navigatorKey,
            routes: Routes.routes,
            title: 'Recipe App',
            debugShowCheckedModeBanner: false,
            initialRoute: Routes.login,
          ),
        );
      },
    );
  }
}
