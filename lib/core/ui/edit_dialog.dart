import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../logic/helper_method.dart';
import 'app_button.dart';
import 'app_image.dart';
import 'app_input.dart';
import '../../views/home/views/home.dart';

class EditDialog extends StatelessWidget {
  const EditDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      backgroundColor: Colors.white,

      contentPadding: EdgeInsets.all(24.r),
      children: [
        Row(
          children: [
            Text(
              'Edit Title',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: AppImage(image: 'wrong.svg'),
            ),
          ],
        ),
        SizedBox(
          height: 30.h,
        ),
        AppInput(
          hintText: '',
        ),
        AppButton(
          title: 'Save',
          onTap: () => goTo(
            page: HomeView(),
          ),
        ),
      ],
    );
  }
}
