import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/pages/detail_page.dart';

import '../common/app_style.dart';
import '../common/extension.dart';
import '../common/result_state.dart';
import '../model/recipe_model/recipe_model.dart';
import '../provider/home_notifier.dart';
import '../routes/name_route.dart';
import '../routes/page_route.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => Provider.of<HomeNotifier>(context, listen: false).fetchRecipe(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final homeNotifier = Provider.of<HomeNotifier>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigation.navigateToNamed(Routes.addRecipe);
          homeNotifier.fetchRecipe();
        },
        backgroundColor: AppStyle.primaryColor,
        child: const Icon(Icons.food_bank),
      ),
      body: SafeArea(
        child: Consumer<HomeNotifier>(builder: (context, value, child) {
          return homeNotifier.state == ResultState.HasData
              ? ListView.separated(
                  separatorBuilder: (context, index) => const Divider(
                    color: AppStyle.greyColor,
                  ),
                  itemCount: homeNotifier.listRecipes.length,
                  itemBuilder: (context, index) {
                    final RecipeModel recipe = homeNotifier.listRecipes[index];

                    return _itemCard(recipe, homeNotifier, context);
                  },
                )
              : const Center(
                  child: CircularProgressIndicator(),
                );
        }),
      ),
    );
  }

  Widget _itemCard(
      RecipeModel recipe, HomeNotifier homeNotifier, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(data: recipe),
          ),
        );
      },
      child: Dismissible(
        background: Container(
          alignment: Alignment.centerRight,
          color: Colors.red,
          child: const Icon(
            Icons.delete,
            color: Colors.white,
            size: 50,
          ),
        ),
        confirmDismiss: (direction) async {
          return await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Delete'),
              content: const Text('Are you sure you want to delete this item?'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text('No'),
                ),
                TextButton(
                  onPressed: () async {
                    await homeNotifier.deleteRecipe(recipe.id.toString());
                    Navigation.goBack();
                  },
                  child: const Text('Yes'),
                ),
              ],
            ),
          );
        },
        key: Key(recipe.id.toString()),
        child: Card(
          margin: const EdgeInsets.all(8),
          elevation: 8,
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Hero(
                  tag: 'image${recipe.id}',
                  child: Lottie.asset(
                    'food'.lottie,
                    height: 150.h,
                    width: 150.w,
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Nama Resep: ${recipe.title}'),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text('Deskripsi: ${recipe.description}'),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ),
    );
  }
}
