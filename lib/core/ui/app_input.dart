import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_image.dart';

class AppInput extends StatefulWidget {
  const AppInput({
    super.key,
    this.bottomSpacing = 16,
    required this.hintText,
    this.isPasswrod = false,
    this.suffexIcon,

    this.prefixIcon,
    this.isSwitched = false,
    this.isSuggention = false,
    this.isChatHistory = false,
  });
  final double bottomSpacing;
  final String hintText;
  final bool isPasswrod, isSwitched, isSuggention, isChatHistory;
  final String? suffexIcon;
  final String? prefixIcon;

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  bool isHidden = true;
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: widget.bottomSpacing),
      child: TextFormField(
        obscureText: widget.isPasswrod,
        decoration: InputDecoration(
          suffix: widget.isChatHistory
              ? Text(
                  '10/12/2021',
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                  ),
                )
              : null,
          contentPadding: widget.isSuggention
              ? EdgeInsetsGeometry.directional(bottom: 100.r, start: 16.r)
              : null,

          hintText: widget.hintText,
          prefixIcon: widget.prefixIcon != null
              ? AppImage(image: '${widget.prefixIcon}')
              : null,

          suffixIcon: widget.isPasswrod
              ? IconButton(
                  icon: AppImage(image: 'visibility_off.svg'),
                  onPressed: () {},
                )
              : widget.isSwitched
              ? Switch(
                  activeColor: Color(0xff2F65F0),
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = !isSwitched;
                    });
                  },
                )
              : widget.suffexIcon != null
              ? AppImage(image: '${widget.suffexIcon}')
              : null,
        ),
      ),
    );
  }
}
