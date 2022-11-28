import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../common/app_style.dart';

class CustomButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  const CustomButtonWidget({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(1.sw, 50.h),
        backgroundColor: AppStyle.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: const TextStyle(
          fontWeight: AppStyle.bold,
          fontSize: 16,
        ),
      ),
    );
  }
}
