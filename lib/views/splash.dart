import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core/logic/helper_method.dart';
import 'on_borading.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    goTo(page: OnBoradingView(), delaySeconds: 3);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlipInX(
        duration: Duration(seconds: 1),
        child: Center(
          child: CircleAvatar(
            backgroundColor: Color(0xff284243).withValues(alpha: .3),
            radius: 170.r,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                Text(
                  'Together Towards Tranquility',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff284243).withValues(
                      alpha: .57,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
