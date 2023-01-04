import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wash_fairy/common/widget/gps_row_component.dart';
import 'package:wash_fairy/common/widget/wash_support_badge_component.dart';
import 'package:wash_fairy/const/palette.dart';
import 'package:wash_fairy/home/widget/menu_layer_title_component.dart';

class ProximateWashScreenComponent extends StatefulWidget {
  const ProximateWashScreenComponent({Key? key}) : super(key: key);

  @override
  State<ProximateWashScreenComponent> createState() => _ProximateWashScreenComponentState();
}

class _ProximateWashScreenComponentState extends State<ProximateWashScreenComponent> {
  List<Widget> proximateList = const [
    ProximateWash(
      title: '런드리익스프레스 신림점',
      distance: 100,
      status: WashStatus.saturation,
      isWashSupport: true,
    ),
    ProximateWash(
      title: '에코런드렛 신림동점',
      distance: 126,
      status: WashStatus.clearance,
      isWashSupport: true,
    ),
    ProximateWash(
      title: '센트럴빨래방 파란신림점',
      distance: 240,
      status: WashStatus.clearance,
      isWashSupport: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          MenuLayerTitleComponent(address: '관악구 신림동', title: '지금 가장 가까운 코인세탁소는?', textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
          ListView.separated(
            padding: EdgeInsets.only(top: 5),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => SizedBox(
              height: 8,
            ),
            itemBuilder: (context, index) {
              return proximateList[index];
            },
            itemCount: proximateList.length,
          ),
        ],
      ),
    );
  }
}

enum WashStatus {
  saturation,
  clearance,;

  Widget getText() {
    if(this == WashStatus.saturation) {
      return Text('포화', style: TextStyle(color: Color(0xffFF0000), fontSize: 15, fontWeight: FontWeight.w600),);
    }
    return Text('여유', style: TextStyle(color: Color(0xff4BC189), fontSize: 15, fontWeight: FontWeight.w600),);
  }
}

class ProximateWash extends StatelessWidget {
  final String title;
  final int distance;
  final WashStatus status;
  final bool isWashSupport;

  const ProximateWash(
      {Key? key,
      required this.title,
      required this.distance,
      required this.status,
      required this.isWashSupport})
      : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffE0E1E4),
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 20,
          ),
          if (isWashSupport) ...[
            Expanded(
              child: Row(
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  WashSupportBadgeComponent(),
                ],
              ),
            ),
          ] else ...[
            Expanded(
              child: Text(
                title,
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
          Text(
            '${distance}m',
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xffACACAC),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          SizedBox(width: 26, child: Center(child: status.getText())),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
    );
  }
}
