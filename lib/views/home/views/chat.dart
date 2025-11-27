import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/ui/app_image.dart';
import '../../../core/ui/app_input.dart';
import 'widgets/chat_app_bar.dart';
import 'widgets/chat_buble.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChatAppBar(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.r, vertical: 16.r),
        reverse: true,
        children: [
          ChatBuble(
            bodyMessage:
                'I\'m sorry to hear that you\'re feeling upset. If you\'d like, you can share what\'s on your mind, and I\'m here to listen and offer support or guidance if you need it. Remember, it\'s okay to feel upset sometimes, and it\'s important to take care of yourself.',
          ),
          SizedBox(
            height: 28.h,
          ),
          ChatBuble(
            bodyMessage: 'I feel upset',
            isRobot: false,
          ),
          ChatBuble(
            bodyMessage:
                'I\'m sorry to hear that you\'re feeling upset. If you\'d like, you can share what\'s on your mind, and I\'m here to listen and offer support or guidance if you need it. Remember, it\'s okay to feel upset sometimes, and it\'s important to take care of yourself.',
          ),
          SizedBox(
            height: 28.h,
          ),
          ChatBuble(
            bodyMessage: 'I feel upset',
            isRobot: false,
          ),
          ChatBuble(
            bodyMessage:
                'I\'m sorry to hear that you\'re feeling upset. If you\'d like, you can share what\'s on your mind, and I\'m here to listen and offer support or guidance if you need it. Remember, it\'s okay to feel upset sometimes, and it\'s important to take care of yourself.',
          ),
          SizedBox(
            height: 28.h,
          ),
          ChatBuble(
            bodyMessage: 'I feel upset',
            isRobot: false,
          ),
          ChatBuble(
            bodyMessage:
                'I\'m sorry to hear that you\'re feeling upset. If you\'d like, you can share what\'s on your mind, and I\'m here to listen and offer support or guidance if you need it. Remember, it\'s okay to feel upset sometimes, and it\'s important to take care of yourself.',
          ),
          SizedBox(
            height: 28.h,
          ),
          ChatBuble(
            bodyMessage: 'I feel upset',
            isRobot: false,
          ),
        ],
      ),
      bottomNavigationBar: _ChatNavgatiorBar(),
    );
  }
}

class _ChatNavgatiorBar extends StatelessWidget {
  const _ChatNavgatiorBar();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.r),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: AppInput(
              hintText: 'write your message',
            ),
          ),
          SizedBox(
            width: 14.w,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 15.r),
            child: CircleAvatar(
              backgroundColor: Color(0xff284243),
              radius: 30.r,
              child: IconButton(
                onPressed: () {},
                icon: AppImage(
                  image: 'send_message.svg',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
