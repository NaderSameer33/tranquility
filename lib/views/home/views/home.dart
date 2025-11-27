import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/logic/helper_method.dart';
import '../../../core/ui/app_drawer.dart';
import '../../../core/ui/app_image.dart';
import 'assistent.dart';
import 'pages/empty_chat.dart';
import 'pages/profile.dart';
import 'pages/quotes.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _list = [
    _Model(
      'chat.svg',
      'chats_active.svg',
      'Chats',
      EmptyChatPage(),
    ),
    _Model(
      'quote.svg',
      'quote_active.svg',
      'Quotes',
      QuotesPage(),
    ),
    _Model(
      'profile.svg',
      'profile_acive.svg',
      'Profile',
      ProfilePage(),
    ),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          _list[currentIndex].label,
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: AppDrawer(),
      body: _list[currentIndex].page,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff284243),
        child: AppImage(
          image: 'flaot_chat.svg',
        ),
        onPressed: () => goTo(
          page: AssistentChatView(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withValues(alpha: .3),

        backgroundColor: Color.fromRGBO(40, 66, 67, 1),
        items: List.generate(
          3,
          (index) => BottomNavigationBarItem(
            icon: AppImage(
              image: currentIndex == index
                  ? _list[index].activeImage
                  : _list[index].image,
            ),
            label: _list[index].label,
          ),
        ),
      ),
    );
  }
}

class _Model {
  final String image, activeImage, label;
  final Widget page;
  _Model(this.image, this.activeImage, this.label, this.page);
}
