import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../logic/helper_method.dart';
import 'app_image.dart';
import 'app_input.dart';
import '../../views/home/views/about_us.dart';
import '../../views/home/views/suggestions.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          _DrawerHeader(),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.r),
            child: Column(
              children: [
                InkWell(
                  onTap: () => goTo(page: AboutUsView()),
                  child: AppInput(
                    hintText: 'About Us',
                    prefixIcon: 'about_us.svg',
                  ),
                ),
                AppInput(
                  hintText: 'Rate Our App',
                  prefixIcon: 'star.svg',
                ),
                InkWell(
                  onTap: () => goTo(page: SuggestionsView()),
                  child: AppInput(
                    hintText: 'Suggestions',
                    prefixIcon: 'suggestion.svg',
                  ),
                ),
                AppInput(
                  prefixIcon: 'finger.svg',
                  hintText: 'Enable Easy Login',
                  isSwitched: true,
                ),
                Container(
                  color: Color(0xffFF3A3A).withValues(alpha: .1),
                  child: ListTile(
                    leading: IconButton(
                      onPressed: () {},
                      icon: AppImage(
                        image: 'log_out.svg',
                      ),
                    ),
                    title: Text(
                      'Log out ',
                      style: TextStyle(
                        color: Color(0xffF60000),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
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

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 286.h,
      decoration: BoxDecoration(
        color: Color(0xff284243),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(25.r),
          bottomLeft: Radius.circular(25.r),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppImage(
            image: 'drawer_profile.jpg',
            height: 160,
            width: 160,
          ),
          SizedBox(
            height: 17.h,
          ),
          Text(
            'Sara',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            '01027545631',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
            ),
          ),
        ],
      ),
    );
  }
}
