import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/ui/app_image.dart';

class RegisterUploadImage extends StatelessWidget {
  const RegisterUploadImage({
    super.key,
    this.isReigster = true,
  });
  final bool isReigster;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundColor: Color(0xff000000).withValues(alpha: .1),
            radius: 75.r,
            child: CircleAvatar(
              radius: isReigster ? null : 70,
              child: AppImage(
                image: isReigster ? 'ImageBroken.svg' : 'drawer_profile.jpg',

                color: isReigster ? Colors.white : null,
              ),
            ),
          ),
          Positioned(
            bottom: 1,
            right: 1,
            child: CircleAvatar(
              backgroundColor: Color(0xff284243),
              child: IconButton(
                onPressed: () {},
                icon: AppImage(
                  image: isReigster ? 'add_icon.svg' : 'edit_profile.svg',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
