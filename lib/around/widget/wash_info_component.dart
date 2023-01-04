import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wash_fairy/around/screen/around_detail_screen.dart';
import 'package:wash_fairy/common/widget/star_component.dart';
import 'package:wash_fairy/common/widget/wash_support_badge_component.dart';
import 'package:wash_fairy/const/button.dart';

class WashInfoComponent extends StatelessWidget {
  const WashInfoComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double point = 4.5;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            TextButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => AroundDetailScreen(),));
              },
              style: nothingButtonStyle,
              child: Text(
                '에코런드렛 신림점',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(width: 4),
            WashSupportBadgeComponent(),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          '서울특별시 관악구 남부순환로187길 30 1층',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xff999999),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            StarComponent(point: point),
            SizedBox(width: 8,),
            Text('${point} (1)', style: TextStyle(color: Color(0xff999999),),),
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}