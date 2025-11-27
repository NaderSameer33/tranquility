import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../logic/helper_method.dart';
import '../../views/auth/views/register.dart';

class AppLoginOrSignin extends StatelessWidget {
  const AppLoginOrSignin({super.key, this.isLogin = true});
  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        text: isLogin ? 'Don’t have an account ?' : 'Already have an account ?',
        style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
        ),
        children: [
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: TextButton(
              onPressed: () {
                if (isLogin) {
                  goTo(page: RegisterView());
                } else {
                  Navigator.pop(context);
                }
              },
              child: Text(
                isLogin ? 'Sign up' : 'Login',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
