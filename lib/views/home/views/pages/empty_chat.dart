import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/ui/app_image.dart';
import '../assistent.dart';

class EmptyChatPage extends StatelessWidget {
  const EmptyChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppImage(
              image: 'chat_body.png',
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'You don’t have any Chats yet.',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20.sp,
              ),
            ),
          ],
        ),
      ),
     
    );
  }
}
