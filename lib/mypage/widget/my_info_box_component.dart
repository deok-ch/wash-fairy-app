import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wash_fairy/const/button.dart';
import 'package:wash_fairy/mypage/screen/usage_details_screen.dart';

class MyInfoBoxComponent extends StatelessWidget {
  const MyInfoBoxComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        height: 86,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          border: Border.all(color: const Color(0xffDEDEDE)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MenuButton(title:'적립포인트', info : '1500p',),
            verticalDivider(),
            MenuButton(title:'세탁이용내역',info : '15건', screen: UsageDetailsScreen(),),
            verticalDivider(),
            MenuButton(title:'세탁리뷰',info : '1건'),
          ],
        ),
      ),
    );
  }
}

VerticalDivider verticalDivider() {
  return VerticalDivider(
      thickness: 1,
      width: 1,
      indent: 11,
      endIndent: 11,
      color: Color(0xffDEDEDE));
}

class MenuButton extends StatelessWidget {
  final String title;
  final String info;
  final Widget? screen;
  const MenuButton({Key? key, required this.title, required this.info, this.screen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: nothingButtonStyle,
        onPressed: () {
          if(screen != null) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => screen!,));
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              info,
              style: TextStyle(
                  color: Color(0xff38B7FF),
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}

