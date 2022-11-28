import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../common/app_style.dart';
import '../common/extension.dart';
import '../provider/register_notifier.dart';
import '../widgets/custom_button_widget.dart';
import '../widgets/custom_form_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final registerNotifier =
        Provider.of<RegisterNotifier>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.w,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Daftar Akun',
                  style: TextStyle(
                    fontWeight: AppStyle.bold,
                    fontSize: 20.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Mendaftar untuk mendapat pengalaman yang lebih baik',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: AppStyle.light,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Hero(
                  tag: 'login',
                  child: Lottie.asset(
                    'login'.lottie,
                    width: 1.sw,
                    height: 150.h,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                _buildFormField(registerNotifier),
                SizedBox(
                  height: 50.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildFormField(RegisterNotifier registerNotifier) {
    return Form(
      key: registerNotifier.formKey,
      child: Column(
        children: [
          CustomFormWidget(
            label: 'Email',
            controller: registerNotifier.emailController,
          ),
          SizedBox(
            height: 16.h,
          ),
          CustomFormWidget(
            label: 'Username',
            controller: registerNotifier.usernameController,
          ),
          SizedBox(
            height: 16.h,
          ),
          CustomFormWidget(
            label: 'Nama Lengkap',
            controller: registerNotifier.nameController,
          ),
          SizedBox(
            height: 16.h,
          ),
          Consumer<RegisterNotifier>(
            builder: (context, value, child) {
              return TextFormField(
                validator: (value) =>
                    value!.isEmpty ? 'Password tidak boleh kosong' : null,
                obscureText: value.isVisible,
                controller: value.passwordController,
                decoration: InputDecoration(
                  suffixIconColor: AppStyle.greyColor,
                  suffixIcon: IconButton(
                    onPressed: () {
                      value.changeVisibility();
                    },
                    icon: value.isVisible2
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                ),
              );
            },
          ),
          SizedBox(
            height: 16.h,
          ),
          Consumer<RegisterNotifier>(
            builder: (context, value, child) {
              return TextFormField(
                controller: value.passwordConfirmationController,
                validator: (value) =>
                    value!.isEmpty ? 'Password tidak boleh kosong' : null,
                obscureText: value.isVisible2,
                decoration: InputDecoration(
                  suffixIconColor: AppStyle.greyColor,
                  suffixIcon: IconButton(
                    onPressed: () => value.changeVisibility2(),
                    icon: value.isVisible2
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  labelText: 'Konfirmasi Password',
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                ),
              );
            },
          ),
          SizedBox(
            height: 20.h,
          ),
          Consumer<RegisterNotifier>(
            builder: (context, value, child) {
              return value.isRegister
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : CustomButtonWidget(
                      onPressed: () async {
                        if (value.formKey.currentState!.validate()) {
                          await value.registerUser(
                            value.nameController.text,
                            value.usernameController.text,
                            value.emailController.text,
                            value.passwordController.text,
                            value.passwordConfirmationController.text,
                            context,
                          );
                        }
                      },
                      label: 'Daftar',
                    );
            },
          )
        ],
      ),
    );
  }
}
