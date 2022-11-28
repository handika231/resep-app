import 'package:flutter/material.dart';

import '../utils/recipe_service.dart';

class AddRecipeNotifier extends ChangeNotifier {
  RecipeServiceImpl service;
  AddRecipeNotifier(this.service);
  bool isAdd = false;
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController sourceController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  final formKey = GlobalKey<FormState>(debugLabel: '_addRecipeFormKey');
  Future<void> addRecipe() async {
    try {
      isAdd = true;
      notifyListeners();
      await service.addRecipe(titleController.text, descriptionController.text,
          sourceController.text, timeController.text);
    } catch (e) {
      isAdd = false;
      notifyListeners();
      throw Exception();
    }
  }
}
