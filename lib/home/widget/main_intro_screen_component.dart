
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wash_fairy/around/screen/around_screen.dart';
import 'package:wash_fairy/const/font.dart';
import 'package:wash_fairy/const/palette.dart';

class MainIntroScreenComponent extends StatefulWidget {
  const MainIntroScreenComponent({Key? key}) : super(key: key);

  @override
  State<MainIntroScreenComponent> createState() => _MainIntroScreenComponentState();
}

class _MainIntroScreenComponentState extends State<MainIntroScreenComponent> {
  String name = '김민희';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 382,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff1CADFF),
                  Color(0xffA5DEFEE5).withOpacity(0.9)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.355, 1.14],
              ),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))),
        ),
        Positioned(
          right: -45,
          top: 110,
          child: Container(
            height: 232,
            width: 232,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(116),
              gradient: LinearGradient(
                colors: [Color(0xffFFE794), Color(0xffFFFFFF00).withOpacity(0)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0, 1],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 105,
              ),
              Text(
                '안녕하세요, $name님!',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: whiteColor,
                ),
              ),
              Text(
                '세탁하기 딱 좋은 날이에요!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: whiteColor,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                '관악구, 맑음 22.5°',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: whiteColor,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                '마지막으로 빨래한지 5일 됐어요.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: whiteColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MenuButton(iconData: Icons.search, title:'세탁소 찾기', screen: AroundScreen(),),
                  MenuButton(iconData: Icons.qr_code, title:'QR결제'),
                  MenuButton(iconData: Icons.notifications_none, title:'알림설정'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MenuButton extends StatelessWidget {
  final IconData iconData;
  final String title;
  final Widget? screen;
  const MenuButton({Key? key, required this.iconData, required this.title, this.screen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double menuSize = (MediaQuery.of(context).size.width - 60) / 3;

    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      onPressed: () {
        if(screen != null) {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen!,));
        }
      },
      child: Container(
        width: menuSize,
        height: menuSize,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: whiteColor.withOpacity(0.7),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 38,
              color: blackColor,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: pretendard,
                color: blackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

