import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/logic/helper_method.dart';
import '../../../core/ui/app_button.dart';
import '../../../core/ui/app_image.dart';
import '../../../core/ui/app_input.dart';
import 'login.dart';
import '../../home/views/home.dart';

class CreatePasswordView extends StatelessWidget {
  const CreatePasswordView({super.key, this.isChangePassword = true});
  final bool isChangePassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppImage(image: 'forget_password.png'),
              SizedBox(
                height: 23.h,
              ),
              Text(
                isChangePassword
                    ? 'Change Your Password'
                    : 'Create New Password',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24.sp,
                ),
              ),

              SizedBox(
                height: 16.h,
              ),
              if (!isChangePassword)
                Text(
                  'create your new password to log in !',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                  ),
                ),
              if (!isChangePassword)
                SizedBox(
                  height: 16.h,
                ),
              AppInput(
                hintText: isChangePassword ? 'Old Password' : 'password',
                isPasswrod: true,
              ),
              AppInput(
                isPasswrod: true,
                hintText: isChangePassword
                    ? 'New Password'
                    : 'Conform Passwrod',
              ),
              if (isChangePassword)
                AppInput(
                  hintText: 'Confirm New Password',
                  isPasswrod: true,
                ),

              AppButton(
                title: isChangePassword ? 'Change Password' : 'Confirm',
                onTap: () {
                  if (isChangePassword) {
                    goTo(page: HomeView(), canPop: false);
                  } else {
                    goTo(page: LoginView(), canPop: false);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
