import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/logic/helper_method.dart';
import '../../../core/ui/app_button.dart';
import '../../../core/ui/app_image.dart';
import '../../../core/ui/app_verfiy_code.dart';
import 'create_password.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppImage(
                image: 'otp.png',
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                textAlign: TextAlign.start,
                'Verification',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24.sp,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Please enter the code sent on your\nphone',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                  color: Color(0xff284243).withValues(alpha: 6.7),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              AppVerfiyCode(),
              SizedBox(
                height: 50.h,
              ),
              AppButton(
                title: 'Verify',
                onTap: () => goTo(
                  page: CreatePasswordView(
                    isChangePassword: false,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
