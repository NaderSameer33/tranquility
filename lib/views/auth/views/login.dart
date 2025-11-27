import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/logic/helper_method.dart';
import '../../../core/ui/app_button.dart';
import '../../../core/ui/app_image.dart';
import '../../../core/ui/app_input.dart';
import '../../../core/ui/app_login_or_signin.dart';
import 'forget_passwrd.dart';
import '../widgets/social_button.dart';
import '../../home/views/home.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
                image: 'login.png',
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                'Welcome To',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              Text(
                'Tranquility',
                style: TextStyle(
                  height: 1,
                  fontSize: 48.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Mystery Quest',
                  color: Color(0xff284243),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),

              AppInput(
                hintText: 'Phone Number',
              ),
              AppInput(
                hintText: 'Your Password',
                isPasswrod: true,
              ),

              TextButton(
                style: TextButton.styleFrom(
                  alignment: Alignment.centerRight,
                ),
                onPressed: () => goTo(
                  page: ForgetPasswrdView(),
                ),
                child: Text(
                  'Forget Password?',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 65.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xff284243).withValues(alpha: .1),
                      ),
                      child: AppImage(image: 'finger.svg'),
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Expanded(
                    flex: 4,
                    child: AppButton(
                      title: 'Login',
                      onTap: () => goTo(page: HomeView(), canPop: false),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              AppLoginOrSignin(),
              SizedBox(
                height: 24.h,
              ),
              SocialButton(),
              SocialButton(
                isGoogle: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
