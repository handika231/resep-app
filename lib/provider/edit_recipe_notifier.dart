import 'package:flutter/material.dart';
import 'package:recipe_app/utils/edit_recipe_service.dart';

class EditRecipeNotifier extends ChangeNotifier {
  EditRecipeServiceImpl service;
  EditRecipeNotifier(this.service);

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController sourceController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  final formKey = GlobalKey<FormState>(debugLabel: '_editRecipeFormKey');
  Future<void> editRecipe(String id) async {
    try {
      await service.editRecipe(
        id,
        titleController.text,
        descriptionController.text,
        sourceController.text,
        timeController.text,
      );
      descriptionController.clear();
      titleController.clear();
      sourceController.clear();
      timeController.clear();
    } catch (e) {
      throw Exception();
    }
  }
}
