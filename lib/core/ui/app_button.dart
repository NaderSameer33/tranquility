import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.title, required this.onTap});
  final String title;
  final VoidCallback onTap ; 

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onTap ,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
