import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wash_fairy/home/widget/advert_image_screen_component.dart';
import 'package:wash_fairy/home/widget/main_intro_screen_component.dart';
import 'package:wash_fairy/home/widget/proximate_todo_screen_component.dart';
import 'package:wash_fairy/home/widget/proximate_wash_screen_component.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainIntroScreenComponent(),
          SizedBox(
            height: 25,
          ),
          ProximateWashScreenComponent(),
          SizedBox(
            height: 32,
          ),
          AdvertImageScreenComponent(imageUrl: 'assets/image/advert_img1.png'),
          SizedBox(
            height: 32,
          ),
          ProximateTodoScreenComponent(),
          SizedBox(
            height: 32,
          ),
          Image.asset(
            'assets/image/advert_img2.png',
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
