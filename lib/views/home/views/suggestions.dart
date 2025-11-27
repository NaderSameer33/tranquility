import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/ui/app_button.dart';
import '../../../core/ui/app_image.dart';
import '../../../core/ui/app_input.dart';

class SuggestionsView extends StatelessWidget {
  const SuggestionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        title: Text(
          'Suggestions',
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: AppImage(
                image: 'suggest.png',
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              textAlign: TextAlign.center,
              'Tell Us How We Can Help',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            AppInput(
              hintText: 'Subject',
            ),
            AppInput(
              hintText: 'body',
              isSuggention: true,
            ),
            SizedBox(
              height: 24.h,
            ),
            AppButton(
              title: 'Send Message',
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
}
