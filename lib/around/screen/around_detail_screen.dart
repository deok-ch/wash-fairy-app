import 'dart:async';
import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:wash_fairy/around/widget/map_category_tab_component.dart';
import 'package:wash_fairy/around/widget/map_marker_dialog_component.dart';

import 'package:wash_fairy/around/widget/search_component.dart';
import 'package:wash_fairy/around/widget/wash_info_component.dart';
import 'package:wash_fairy/common/widget/color_dot_component.dart';
import 'package:wash_fairy/common/widget/image_slider_component.dart';
import 'package:wash_fairy/common/widget/wash_support_badge_component.dart';
import 'package:wash_fairy/const/button.dart';
import 'package:wash_fairy/const/palette.dart';

class AroundDetailScreen extends StatelessWidget {
  const AroundDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> images = [
      Image.asset(
        'assets/image/wash.png',
        fit: BoxFit.fill,
      ),
      Image.asset('assets/image/star.png', fit: BoxFit.fill),
      Image.asset('assets/image/caffe.png', fit: BoxFit.fill),
      Image.asset('assets/image/sal.png', fit: BoxFit.fill),
      Image.asset('assets/image/uzi.png', fit: BoxFit.fill),
    ];

    List<Widget> options = [
      OptionIconComponent(iconData: Icons.gamepad, label: '오락기'),
      OptionIconComponent(iconData: Icons.gamepad, label: '오락기'),
      OptionIconComponent(iconData: Icons.gamepad, label: '오락기'),
      OptionIconComponent(iconData: Icons.gamepad, label: '오락기'),
      OptionIconComponent(iconData: Icons.gamepad, label: '오락기'),
      OptionIconComponent(iconData: Icons.gamepad, label: '오락기'),
      OptionIconComponent(iconData: Icons.gamepad, label: '오락기'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '내 주변',
          style: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageSlider(images: images),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: WashInfoComponent(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 60,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => options[index],
                    separatorBuilder: (context, index) => SizedBox(width: 30),
                    itemCount: options.length),
              ),
            ),
            const Divider(
              thickness: 7,
              color: bigDividerColor,
            ),
          ],
        ),
      ),
    );
  }
}

class OptionIconComponent extends StatelessWidget {
  final IconData iconData;
  final String label;

  const OptionIconComponent(
      {Key? key, required this.iconData, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Column(
        children: [
          Icon(
            iconData,
            color: Color(0xff999999),
          ),
          SizedBox(height: 12,),
          Text(label, style :TextStyle(color: Color(0xff999999))),
        ],
      ),
    );
  }
}
