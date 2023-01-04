import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wash_fairy/common/screen/default_layout.dart';
import 'package:wash_fairy/const/font.dart';
import 'package:wash_fairy/const/palette.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 1,), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DefaultLayout()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: splashBackGroundColor,
        child: const Center(
          child:  Text(
            '빨래요정',
            style: TextStyle(
              color: whiteColor,
              fontFamily: pretendard,
              fontWeight: FontWeight.w700,
              fontSize: 36,
            ),
          ),
        ),
      ),
    );
  }
}
