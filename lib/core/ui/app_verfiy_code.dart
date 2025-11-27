import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class AppVerfiyCode extends StatelessWidget {
  const AppVerfiyCode({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      autoFocus: true,
      animationDuration: Duration(
        milliseconds: 350,
      ),
      animationType: AnimationType.scale,
      appContext: context,
      length: 4,
      pinTheme: PinTheme(
        fieldHeight: 60.h,
        fieldWidth: 83.w,
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(8.r),
        activeColor: Color(0xffACACAC).withValues(alpha: .1),
        selectedColor: Color(0xffACACAC).withValues(alpha: .1),
        inactiveColor: Color(0xffACACAC).withValues(alpha: .1),
        selectedFillColor: Color(0xff284243).withValues(alpha: .3),
        activeFillColor: Color(0xff284243).withValues(alpha: .3),
        inactiveFillColor: Color(0xff284243).withValues(alpha: .3),
      ),
    );
  }
}
