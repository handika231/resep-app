import 'package:flutter/material.dart';

import '../common/result_state.dart';
import '../model/recipe_model/recipe_model.dart';
import '../utils/recipe_service.dart';

class HomeNotifier extends ChangeNotifier {
  RecipeServiceImpl recipeService;
  HomeNotifier(this.recipeService) {
    fetchRecipe();
  }

  List<RecipeModel> listRecipes = [];
  ResultState state = ResultState.NoData;

  Future<List<RecipeModel>> fetchRecipe() async {
    try {
      state = ResultState.Loading;
      notifyListeners();
      listRecipes = await recipeService.fetchRecipe();
      if (listRecipes.isEmpty) {
        state = ResultState.NoData;
        notifyListeners();
        return listRecipes;
      } else {
        state = ResultState.HasData;
        notifyListeners();
        return listRecipes;
      }
    } catch (e) {
      state = ResultState.Error;
      notifyListeners();
      return listRecipes;
    }
  }

  Future<void> deleteRecipe(String id) async {
    try {
      await recipeService.deleteRecipe(id);
      fetchRecipe();
    } catch (e) {
      state = ResultState.Error;
      notifyListeners();
    }
  }
}
