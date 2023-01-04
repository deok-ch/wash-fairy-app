import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wash_fairy/const/button.dart';
import 'package:wash_fairy/const/palette.dart';
import 'package:wash_fairy/mypage/widget/my_info_box_component.dart';

const TextStyle bigTextStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w600,
);
const TextStyle smallTextStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
);

class MyPageScreen extends StatelessWidget {
  const MyPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = '김민희';
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            _level(),
            const SizedBox(height: 4),
            _intro(name),
            const SizedBox(height: 24),
            MyInfoBoxComponent(),
            const SizedBox(height: 10),
            _friendInvite(),
            const SizedBox(height: 22),
            const Divider(
              thickness: 7,
              color: bigDividerColor,
            ),
            const SizedBox(height: 33),
            _shoppingInfo(),
            const SizedBox(height: 32),
            _myInfo(),
            const Divider(
              thickness: 7,
              color: bigDividerColor,
            ),
            const SizedBox(height: 24),
            _afterService(),
          ],
        ),
      ),
    );
  }
}

Widget _afterService() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
          style: nothingButtonStyle,
          onPressed: () {},
          child: Container(
            alignment: Alignment.centerLeft,
            height: 43,
            width: double.infinity,
            child: Text(
              '공지사항',
              style: smallTextStyle,
            ),
          ),
        ),
        Divider(
          thickness: 1,
          color: smallDividerColor,
        ),
        TextButton(
          style: nothingButtonStyle,
          onPressed: () {},
          child: Container(
            alignment: Alignment.centerLeft,
            height: 43,
            width: double.infinity,
            child: Text(
              '이용약관',
              style: smallTextStyle,
            ),
          ),
        ),
        Divider(
          thickness: 1,
          color: smallDividerColor,
        ),
      ],
    ),
  );
}

Widget _myInfo() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '내 정보',
          style: bigTextStyle,
        ),
        SizedBox(
          height: 5,
        ),
        Divider(
          thickness: 1,
          color: smallDividerColor,
        ),
        TextButton(
          style: nothingButtonStyle,
          onPressed: () {},
          child: Container(
            alignment: Alignment.centerLeft,
            height: 43,
            width: double.infinity,
            child: Text(
              '결제카드설정',
              style: smallTextStyle,
            ),
          ),
        ),
        Divider(
          thickness: 1,
          color: smallDividerColor,
        ),
        TextButton(
          style: nothingButtonStyle,
          onPressed: () {},
          child: Container(
            alignment: Alignment.centerLeft,
            height: 43,
            width: double.infinity,
            child: Text(
              '회원등급',
              style: smallTextStyle,
            ),
          ),
        ),
        Divider(
          thickness: 1,
          color: smallDividerColor,
        ),
        TextButton(
          style: nothingButtonStyle,
          onPressed: () {},
          child: Container(
            alignment: Alignment.centerLeft,
            height: 43,
            width: double.infinity,
            child: Text(
              '내 계정',
              style: smallTextStyle,
            ),
          ),
        ),
        Divider(
          thickness: 1,
          color: smallDividerColor,
        ),
      ],
    ),
  );
}

Widget _shoppingInfo() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '쇼핑 정보',
          style: bigTextStyle,
        ),
        SizedBox(
          height: 5,
        ),
        Divider(
          thickness: 1,
          color: smallDividerColor,
        ),
        TextButton(
          style: nothingButtonStyle,
          onPressed: () {},
          child: Container(
            alignment: Alignment.centerLeft,
            height: 43,
            width: double.infinity,
            child: Text(
              '주문/배송조회',
              style: smallTextStyle,
            ),
          ),
        ),
        Divider(
          thickness: 1,
          color: smallDividerColor,
        ),
        TextButton(
          style: nothingButtonStyle,
          onPressed: () {},
          child: Container(
            alignment: Alignment.centerLeft,
            height: 43,
            width: double.infinity,
            child: Text(
              '장바구니',
              style: smallTextStyle,
            ),
          ),
        ),
        Divider(
          thickness: 1,
          color: smallDividerColor,
        ),
        TextButton(
          style: nothingButtonStyle,
          onPressed: () {},
          child: Container(
            alignment: Alignment.centerLeft,
            height: 43,
            width: double.infinity,
            child: Text(
              '쇼핑리뷰',
              style: smallTextStyle,
            ),
          ),
        ),
        Divider(
          thickness: 1,
          color: smallDividerColor,
        ),
      ],
    ),
  );
}

Widget _friendInvite() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: TextButton(
      style: TextButton.styleFrom(padding: EdgeInsets.zero),
      onPressed: () {},
      child: Container(
        width: double.infinity,
        height: 62,
        decoration: BoxDecoration(
          color: Color(0xff59C3FF),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Center(
            child: Text(
          '친구초대하고 3000p 받기',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: whiteColor),
        )),
      ),
    ),
  );
}


Widget _level() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Text(
      'Lv.5 빨래요정',
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        color: Color(0xffACACAC),
      ),
    ),
  );
}

Widget _intro(String name) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Text(
      '$name님 안녕하세요.',
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        color: Colors.black,
      ),
    ),
  );
}

