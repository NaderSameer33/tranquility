import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/ui/app_image.dart';

class QuotesPage extends StatelessWidget {
  const QuotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          AppImage(
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,

            image:
                'https://i.pinimg.com/474x/48/ef/85/48ef85d78a32070d44e5f706e09e8dcc.jpg?nii=t',
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.r),
            margin: EdgeInsets.symmetric(horizontal: 16.r),
            height: 400.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              color: Color(0xffFFFFFF).withValues(alpha: .81),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: AppImage(
                    fit: BoxFit.cover,
                    height: 20,
                    width: 20,
                    image: 'quote_active.svg',
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 16.sp,
                ),
                Text(
                  textAlign: TextAlign.center,
                  '“ The only way to do great work is to love what you do “',
                  style: TextStyle(
                    fontSize: 34.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff284243),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  textAlign: TextAlign.end,
                  'Steve Jobs',
                  style: TextStyle(
                    fontSize: 34.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 17.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Copy',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Color(
                          0xff284243,
                        ),
                      ),
                    ),

                    IconButton(
                      onPressed: () {},
                      icon: AppImage(
                        image: 'copy.svg',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
