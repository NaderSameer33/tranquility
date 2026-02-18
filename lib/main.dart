import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquilty/core/ui/app_input.dart';
import 'core/logic/helper_method.dart';
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
}
