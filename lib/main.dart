import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/logic/helper_method.dart';
import 'views/auth/views/create_password.dart';
import 'views/home/views/home.dart';
import 'views/splash.dart';

void main() {
  runApp(const Tranqulity());
}

class Tranqulity extends StatelessWidget {
  const Tranqulity({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 932),
      splitScreenMode: true,
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        theme: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: Color(0xff284243).withValues(alpha: .3),
            isDense: true,
            hintStyle: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),

            border: buildBorder(),
            focusedBorder: buildBorder(),
            enabledBorder: buildBorder(),
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: Color(0xff284243),
              visualDensity: VisualDensity.compact,
            ),
          ),
          filledButtonTheme: FilledButtonThemeData(
            style: FilledButton.styleFrom(
              backgroundColor: Color(0xff284243),
              fixedSize: Size.fromHeight(60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(8),
              ),
              foregroundColor: Colors.white,
            ),
          ),

          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Inter',
        ),
        home: SplashView(),
        navigatorKey: navKey,
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: Color(0xff284243).withValues(alpha: .29),
      ),
    );
  }
}
