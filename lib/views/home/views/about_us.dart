import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/ui/app_image.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        title: Text(
          'About Us',
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 10.h,
            ),
            AppImage(
              height: 238.h,
              width: 238.w,
              image: 'tranquiliey.jpg',
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              textAlign: TextAlign.center,
              'Welcome to Tranquility\nwhere relaxation meets innovation.',
              style: TextStyle(
                fontSize: 20.h,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 28.h,
            ),
            Text(
              'Welcome to Tranquility – your personal assistant in\n'
              'the digital world. At Tranquility, we believe that\n'
              'everyone deserves a moment of peace and calm\n'
              'amidst the chaos of everyday life. Our mission is to\n'
              'provide a sanctuary where you can unwind\n,'
              'destress, and find solace through meaningful\n'
              'conversations with our AI chatbot.',
              style: TextStyle(
                fontSize: 16.h,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              'Welcome to Tranquility – your personal assistant in\n'
              'the digital world. At Tranquility, we believe that\n'
              'everyone deserves a moment of peace and calm\n'
              'amidst the chaos of everyday life. Our mission is to\n'
              'provide a sanctuary where you can unwind\n,'
              'destress, and find solace through meaningful\n'
              'conversations with our AI chatbot.',
              style: TextStyle(
                fontSize: 16.h,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              'Welcome to Tranquility – your personal assistant in\n'
              'the digital world. At Tranquility, we believe that\n'
              'everyone deserves a moment of peace and calm\n'
              'amidst the chaos of everyday life. Our mission is to\n'
              'provide a sanctuary where you can unwind\n,'
              'destress, and find solace through meaningful\n'
              'conversations with our AI chatbot.',
              style: TextStyle(
                fontSize: 16.h,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
