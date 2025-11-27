import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/ui/app_image.dart';
import '../../../../core/ui/app_input.dart';

class FullChatPage extends StatelessWidget {
  const FullChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.r),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: AppInput(
                    hintText: 'About Work',
                    isChatHistory: true,
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.only(bottom: 16.r),
                  onPressed: () {},
                  icon: AppImage(
                    image: 'delete.svg',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: AppInput(
                    hintText: 'About My Family',
                    isChatHistory: true,
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.only(bottom: 16.r),
                  onPressed: () {},
                  icon: AppImage(
                    image: 'delete.svg',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: AppInput(
                    hintText: 'My self',
                    isChatHistory: true,
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.only(bottom: 16.r),
                  onPressed: () {},
                  icon: AppImage(
                    image: 'delete.svg',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
