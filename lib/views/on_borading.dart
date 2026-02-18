import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core/logic/helper_method.dart';
import '../core/ui/app_image.dart';
import 'auth/views/login.dart';

class OnBoradingView extends StatefulWidget {
  const OnBoradingView({super.key});

  @override
  State<OnBoradingView> createState() => _OnBoradingViewState();
}

class _OnBoradingViewState extends State<OnBoradingView> {
  final pageController = PageController();

  final _list = [
    _Model(
      'onborading_1.jpg',
      'Feel Free',
      'because I\'m the friendly chatbot\n here to assist you with anything you\n need.',
    ),
    _Model(
      'onborading_2.jpg',
      'Ask For Anything',
      'I\'m your friendly neighborhood\nchatbot ready to assist you with\n any questions or concerns.',
    ),
    _Model(
      'onborading_3.jpg',
      'Your Secert is Save',
      'Our platform prioritizes your privacy\n and security',
    ),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        onPageChanged: (value) {
          currentIndex = value;
          setState(() {});
        },
        itemCount: _list.length,

        itemBuilder: (context, index) {
          return _Item(
            pageController: pageController,
            model: _list[index],
            index: currentIndex,
          );
        },
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    required this.model,
    required this.index,
    required this.pageController,
  });
  final _Model model;
  final int index;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppImage(
          image: model.imageName,
        ),
        SizedBox(
          height: 24.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 19.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.titel,
                style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                model.subTitle,
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 60.h,
              ),
              Row(
                children: [
                  if (index != 2)
                    TextButton(
                      onPressed: () => goTo(
                        canPop: false,
                        page: LoginView(),
                      ),
                      child: Text(
                        'skip',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  Spacer(),
                  CircleAvatar(
                    backgroundColor: Color(0xff284243),
                    child: IconButton(
                      onPressed: () {
                        if (index != 2) {
                          pageController.nextPage(
                            duration: Duration(milliseconds: 350),
                            curve: Curves.linear,
                          );
                        } else {
                          goTo(page: LoginView(), canPop: false);
                        }
                      },
                      icon: AppImage(image: 'arrow.svg'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _Model {
  final String titel, subTitle, imageName;
  _Model(this.imageName, this.titel, this.subTitle);
}
