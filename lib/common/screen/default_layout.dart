import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wash_fairy/around/screen/around_screen.dart';
import 'package:wash_fairy/common/screen/test_screen.dart';
import 'package:wash_fairy/const/palette.dart';
import 'package:wash_fairy/home/screen/home_screen.dart';
import 'package:wash_fairy/mypage/screen/mypage_screen.dart';

class DefaultLayout extends StatefulWidget {
  const DefaultLayout({Key? key}) : super(key: key);

  @override
  State<DefaultLayout> createState() => _DefaultLayoutState();
}

class _DefaultLayoutState extends State<DefaultLayout> with TickerProviderStateMixin{
  int currentIndex = 0;

  late TabController _tabController;
  List<Widget> tabBarViews = [
    HomeScreen(),
    CarouselDemo(),
    AroundScreen(),
    HomeScreen(),
    MyPageScreen(),
  ];

   List<BottomNavigationBarItem> tabBarItems = const [
    BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: '홈', backgroundColor: blueColor),
    BottomNavigationBarItem(icon: Icon(Icons.store), label: '스토어', backgroundColor: blueColor),
    BottomNavigationBarItem(icon: Icon(Icons.search), label: '내주변', backgroundColor: blueColor),
    BottomNavigationBarItem(icon: Icon(Icons.checkroom), label: '세탁현황', backgroundColor: blueColor),
    BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: '마이페이지', backgroundColor: blueColor)
  ];

  @override
  void initState() {
    _tabController = TabController(length: tabBarItems.length, vsync: this, initialIndex: 0);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: tabBarViews,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
            _tabController.index = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: tabBarItems
      ),
    );
  }
}
