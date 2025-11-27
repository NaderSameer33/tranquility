import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/ui/app_image.dart';

class ChatBuble extends StatelessWidget {
  const ChatBuble({
    super.key,
    this.isRobot = true,
    required this.bodyMessage,
  });
  final bool isRobot;
  final String bodyMessage;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: isRobot
          ? MainAxisAlignment.start
          : MainAxisAlignment.end,
      children: [
        if (isRobot)
          CircleAvatar(
            child: AppImage(
              image: 'robot.jpg',
            ),
          ),
        if (isRobot)
          SizedBox(
            width: 7.w,
          ),

        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * .7,
          ),
          child: Container(
            padding: EdgeInsets.all(10.r),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              color: isRobot
                  ? Color(0xff284243).withValues(alpha: .1)
                  : Color(0xff284243),
            ),
            child: Text(
              bodyMessage,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: isRobot ? Colors.black : Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
