import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wash_fairy/around/screen/around_detail_screen.dart';
import 'package:wash_fairy/common/widget/color_dot_component.dart';
import 'package:wash_fairy/common/widget/star_component.dart';
import 'package:wash_fairy/common/widget/wash_support_badge_component.dart';
import 'package:wash_fairy/const/button.dart';
import 'package:wash_fairy/const/palette.dart';

class WashStateComponent extends StatelessWidget {
  const WashStateComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffF8F8F8),
        border: Border(
          top: BorderSide(width: 2, color: Color(0xffE0E1E4)),
          bottom: BorderSide(width: 1, color: Color(0xffE0E1E4)),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          const Text(
            '실시간 사용현황',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _washState(dotRedColor, '사용중'),
              _washState(dotYellowColor, '종료예정'),
              _washState(dotGreenColor, '사용가능'),
            ],
          ),
          Divider(),
          _washMachineState('세탁기', 1, 2, 3),
          Divider(),
          _washMachineState('건조기', 4, 5, 6),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

Widget _washState(Color color, String text) {
  return Row(
    children: [
      ColorDotComponent(size: 8, color: color),
      const SizedBox(
        width: 4,
      ),
      Text(
        text,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
      const SizedBox(
        width: 14,
      ),
    ],
  );
}

Widget _washMachineState(String name, int useCount, int willFinishCount, int availableCount) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(flex: 3,child: Text(name)),
        Expanded(
          flex: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ColorDotComponent(size: 12, color: dotRedColor),
              const SizedBox(width: 10,),
              Expanded(child: Text('${useCount}대', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,),)),
              ColorDotComponent(size: 12, color: dotYellowColor),
              const SizedBox(width: 10,),
              Expanded(child: Text('${willFinishCount}대', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,))),
              ColorDotComponent(size: 12, color: dotGreenColor),
              const SizedBox(width: 10,),
              Expanded(child: Text('${availableCount}대', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,))),
            ],
          ),
        ),
      ],
    ),
  );
}