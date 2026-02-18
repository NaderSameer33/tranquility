import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/ui/app_button.dart';
import '../../../core/ui/app_input.dart';
import '../../../core/ui/app_login_or_signin.dart';
import '../widgets/register_upload_image.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 60.h,
              ),
              RegisterUploadImage(),
              SizedBox(
                height: 40.h,
              ),
              AppInput(
                hintText: 'User Name',
              ),
              AppInput(
                hintText: 'Phone Number',
              ),
              AppInput(
                hintText: 'Age',
              ),

              AppInput(
                hintText: 'Passwred',
                isPasswrod: true,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                ),
                onPressed: () {},
                child: Text(
                  'Confirm password ',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              AppButton(title: 'Sign Up', onTap: () => Navigator.pop(context)),
              SizedBox(
                height: 30.h,
              ),
              AppLoginOrSignin(
                isLogin: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
