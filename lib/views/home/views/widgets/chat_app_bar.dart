import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/ui/app_image.dart';
import '../../../../core/ui/edit_dialog.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,

      centerTitle: true,
      backgroundColor: Colors.transparent,
      title: Text(
        'About Work',
        style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      actions: [
        PopupMenuButton(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16.r),
          ),
          itemBuilder: (context) => [
            PopupMenuItem(
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => showDialog(
                      context: context,
                      builder: (context) => EditDialog(),
                    ),
                    icon: AppImage(
                      image: 'edit_title.svg',
                    ),
                  ),

                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Edit Title',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            PopupMenuItem(
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: AppImage(image: 'delete.svg'),
                  ),

                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'delete Title',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffFF0000),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100.h);
}
