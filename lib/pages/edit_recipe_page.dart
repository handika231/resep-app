import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/routes/page_route.dart';

import '../common/app_style.dart';
import '../model/recipe_model/recipe_model.dart';
import '../provider/edit_recipe_notifier.dart';
import '../widgets/custom_button_widget.dart';
import '../widgets/custom_form_widget.dart';

class EditRecipePage extends StatelessWidget {
  const EditRecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    final RecipeModel data =
        ModalRoute.of(context)!.settings.arguments as RecipeModel;
    final provider = Provider.of<EditRecipeNotifier>(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.w,
          ),
          child: SingleChildScrollView(
            child: Form(
              key: provider.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 24.h,
                  ),
                  Text(
                    'Add Recipe',
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: AppStyle.semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  CustomFormWidget(
                    label: data.title ?? "Title",
                    controller: provider.titleController,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomFormWidget(
                    label: data.description ?? "Deskripsi",
                    controller: provider.descriptionController,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomFormWidget(
                    label: data.source ?? "Sumber",
                    controller: provider.sourceController,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    controller: provider.timeController,
                    onTap: () async {
                      final time = await showTimePicker(
                        context: context,
                        builder: (context, child) => MediaQuery(
                            data: MediaQuery.of(context).copyWith(
                              alwaysUse24HourFormat: true,
                            ),
                            child: child!),
                        initialTime: TimeOfDay.now(),
                      );
                      final result = '${time?.hour} Jam ${time?.minute} Menit';
                      provider.timeController.text = result;
                    },
                    readOnly: true,
                    decoration: InputDecoration(
                      labelText: data.cookingTime ?? 'Waktu Memasak',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  CustomButtonWidget(
                    label: 'Edit Resep',
                    onPressed: () async {
                      if (provider.formKey.currentState!.validate()) {
                        await provider.editRecipe(data.id.toString());
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Berhasil Edit Resep'),
                          ),
                        );
                        Navigation.goBack();
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
