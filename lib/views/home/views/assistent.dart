import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/logic/helper_method.dart';
import '../../../core/ui/app_button.dart';
import '../../../core/ui/app_image.dart';
import '../../../core/ui/app_input.dart';
import 'chat.dart';

class AssistentChatView extends StatelessWidget {
  const AssistentChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 399.h,
            decoration: BoxDecoration(
              color: Color(0xff284243).withValues(alpha: .15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                AppImage(
                  image: 'assistent_chat.png',
                ),
                Text(
                  'Hey!',
                  style: TextStyle(
                    fontSize: 50.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff284243),
                  ),
                ),
                Text(
                  'I’am your Personal Assistent',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff284243),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Make New Chat',
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                AppInput(
                  hintText: 'Enter The Title Of Chat',
                ),
                AppButton(
                  title: 'Start Chat',
                  onTap: () => goTo(
                    page: ChatView(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
