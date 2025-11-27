import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/logic/helper_method.dart';
import '../../../core/ui/app_button.dart';
import '../../../core/ui/app_image.dart';
import '../../../core/ui/app_input.dart';
import 'otp.dart';

class ForgetPasswrdView extends StatelessWidget {
  const ForgetPasswrdView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppImage(
                image: 'forget_password.png',
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                textAlign: TextAlign.start,
                'Forget Your Password',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              AppInput(
                hintText: 'Phone Number',
              ),
              SizedBox(
                height: 20.h,
              ),
              AppButton(
                title: 'Forget Passwrod',
                onTap: () => goTo(page: OtpView()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
