import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../utils/constant/colors.dart';

class CustomRedButton extends StatelessWidget {
  // onpressed void function
  final VoidCallback? onPressed;
  final String text;
  const CustomRedButton({
    super.key,
    this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}