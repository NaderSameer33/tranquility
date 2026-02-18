import 'package:flutter/material.dart';
import 'app_image.dart';

class AppInput extends StatefulWidget {
  const AppInput({
    super.key,
    this.bottomSpacing = 16,
    required this.hintText,
    this.isPasswrod = false,

    this.prefixIcon,
    this.isSwitched = false,
    this.isSuggention = false,
    this.isChatHistory = false,
  });
  final double bottomSpacing;
  final String hintText;
  final bool isPasswrod, isSwitched, isSuggention, isChatHistory;
  final String? prefixIcon;

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  bool isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: widget.bottomSpacing),
      child: TextFormField(
        obscureText: widget.isPasswrod && isHidden,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xff284243).withValues(alpha: .3),
          isDense: true,
          hintStyle: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          border: buildBorder(),
          enabledBorder: buildBorder(),

          focusedBorder: buildBorder(),

          hintText: widget.hintText,

          suffixIcon: widget.isPasswrod
              ? IconButton(
                  icon: AppImage(
                    image: isHidden ? 'visibility_off.svg' : 'visibility.svg',
                  ),
                  onPressed: () {
                    setState(() {
                      isHidden = !isHidden;
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(
      color: Color(0xff284243).withValues(alpha: .29),
    ),
  );
}
