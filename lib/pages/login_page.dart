import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../common/app_style.dart';
import '../common/extension.dart';
import '../provider/login_notifier.dart';
import '../routes/name_route.dart';
import '../routes/page_route.dart';
import '../widgets/custom_button_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final loginNotifier = Provider.of<LoginNotifier>(context, listen: false);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 20.h,
          left: 24.w,
          right: 24.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Hero(
                tag: 'login',
                child: Lottie.asset(
                  'login'.lottie,
                  width: 1.sw,
                  height: 250.h,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Selamat Datang',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: AppStyle.medium,
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              const Text(
                'Masuk untuk melanjutkan',
                style: TextStyle(
                  fontWeight: AppStyle.light,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              _buildFormField(loginNotifier),
              SizedBox(
                height: 12.h,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: AppStyle.blackColor,
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {
                    Navigation.navigateToNamed(Routes.register);
                  },
                  child: const Text(
                    'Belum punya akun?',
                    style: TextStyle(
                      fontWeight: AppStyle.medium,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildFormField(LoginNotifier loginNotifier) {
    return Form(
      key: loginNotifier.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            controller: loginNotifier.emailController,
            validator: (value) =>
                value!.isEmpty ? 'Email tidak boleh kosong' : null,
            decoration: InputDecoration(
              labelStyle: const TextStyle(
                color: AppStyle.greyColor,
              ),
              label: const Text('Email'),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(16.r),
                ),
                borderSide: const BorderSide(
                  color: AppStyle.greyColor,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(16.r),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Consumer<LoginNotifier>(
            builder: (context, value, _) {
              return TextFormField(
                controller: value.passwordController,
                validator: (value) =>
                    value!.isEmpty ? 'Password tidak boleh kosong' : null,
                obscureText: loginNotifier.isVisible,
                decoration: InputDecoration(
                  labelStyle: const TextStyle(
                    color: AppStyle.greyColor,
                  ),
                  suffixIconColor: AppStyle.greyColor,
                  suffixIcon: IconButton(
                    onPressed: () => value.changeVisibility(),
                    icon: value.isVisible
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                  ),
                  label: const Text('Password'),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                ),
              );
            },
          ),
          SizedBox(
            height: 50.h,
          ),
          Consumer<LoginNotifier>(
            builder: (context, value, _) {
              return value.isLogin
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : CustomButtonWidget(
                      onPressed: () {
                        if (loginNotifier.formKey.currentState!.validate()) {
                          loginNotifier.loginUser(
                            loginNotifier.emailController.text,
                            loginNotifier.passwordController.text,
                            context,
                          );
                        }
                      },
                      label: 'Masuk',
                    );
            },
          )
        ],
      ),
    );
  }
}
