import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/ui/app_image.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, this.isGoogle = true});
  final bool isGoogle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.r),
      height: 51.h,
      decoration: BoxDecoration(
        color: isGoogle
            ? Color(0xff35B542).withValues(alpha: .5)
            : Color(0xff518EF8).withValues(alpha: .5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 4.r, right: 4.r),
            height: double.infinity,
            width: 70.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4),
                bottomLeft: Radius.circular(4),
              ),
            ),
            child: AppImage(
              image: isGoogle ? 'google.png' : 'facebook.png',
            ),
          ),
          Text(
            isGoogle ? 'Login With Google' : 'Login With Facebook',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
