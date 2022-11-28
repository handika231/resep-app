import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../common/app_style.dart';
import '../provider/add_recipe_notifier.dart';
import '../routes/page_route.dart';
import '../widgets/custom_button_widget.dart';
import '../widgets/custom_form_widget.dart';

class AddRecipePage extends StatelessWidget {
  const AddRecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    final addNotifier = Provider.of<AddRecipeNotifier>(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.w,
          ),
          child: SingleChildScrollView(
            child: Form(
              key: addNotifier.formKey,
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
                    label: 'Title',
                    controller: addNotifier.titleController,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomFormWidget(
                    label: 'Deskripsi',
                    controller: addNotifier.descriptionController,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomFormWidget(
                    label: 'Sumber',
                    controller: addNotifier.sourceController,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  TextFormField(
                    controller: addNotifier.timeController,
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
                      addNotifier.timeController.text = result;
                    },
                    readOnly: true,
                    decoration: InputDecoration(
                      labelText: 'Waktu Memasak',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Consumer<AddRecipeNotifier>(
                    builder: (context, value, child) {
                      return value.isAdd
                          ? const Center(
                              child: Text('Loading...'),
                            )
                          : CustomButtonWidget(
                              label: 'Add Recipe',
                              onPressed: () async {
                                if (addNotifier.formKey.currentState!
                                    .validate()) {
                                  await addNotifier.addRecipe();
                                  Navigation.goBack();
                                }
                              },
                            );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
