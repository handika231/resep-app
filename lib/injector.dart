import 'package:get_it/get_it.dart';
import 'package:recipe_app/provider/edit_comment_notifier.dart';
import 'package:recipe_app/utils/bookmark_service.dart';
import 'package:recipe_app/utils/comment_service.dart';
import 'package:recipe_app/utils/edit_recipe_service.dart';

import 'provider/add_recipe_notifier.dart';
import 'provider/bookmark_notifier.dart';
import 'provider/comment_notifier.dart';
import 'provider/edit_recipe_notifier.dart';
import 'provider/followers_notifier.dart';
import 'provider/home_notifier.dart';
import 'provider/login_notifier.dart';
import 'provider/profile_notifier.dart';
import 'provider/register_notifier.dart';
import 'utils/follow_helper.dart';
import 'utils/followers_service.dart';
import 'utils/recipe_service.dart';
import 'utils/user_service.dart';

final GetIt locator = GetIt.instance;
void init() {
  locator.registerLazySingleton<UserServiceImpl>(() => UserServiceImpl());
  locator.registerLazySingleton<FollowersServiceImpl>(
      () => FollowersServiceImpl());
  locator.registerLazySingleton(() => RecipeServiceImpl());
  locator.registerFactory(() => ProfileNotifier(locator<UserServiceImpl>()));
  locator.registerFactory(() => HomeNotifier(locator()));
  locator.registerFactory(() => LoginNotifier(locator<UserServiceImpl>()));
  locator.registerFactory(() => RegisterNotifier(locator<UserServiceImpl>()));
  locator.registerFactory(() => FollowersNotifier(locator(), locator()));
  locator.registerLazySingleton(() => FollowHelper());
  locator.registerFactory(() => AddRecipeNotifier(locator()));
  locator.registerLazySingleton(() => BookmarkServiceImpl());
  locator.registerFactory(() => BookmarkNotifier(locator()));
  locator.registerLazySingleton(() => EditRecipeServiceImpl());
  locator.registerFactory(() => EditRecipeNotifier(locator()));
  locator.registerLazySingleton(() => CommentServiceImpl());
  locator.registerFactory(() => CommentNotifier(locator()));
  locator.registerFactory(() => EditCommentNotifier(locator()));
}
