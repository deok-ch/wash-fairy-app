import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:wash_fairy/const/palette.dart';
import 'package:wash_fairy/home/widget/menu_layer_title_component.dart';

class ProximateTodoScreenComponent extends StatefulWidget {
  const ProximateTodoScreenComponent({Key? key}) : super(key: key);

  @override
  State<ProximateTodoScreenComponent> createState() => _ProximateTodoScreenComponentState();
}

class _ProximateTodoScreenComponentState extends State<ProximateTodoScreenComponent> {
  List<PlaceComponent> places = [
    PlaceComponent(
        name: '혼맛스시',
        distance: 180,
        imageUrl: 'assets/image/honmat.png',
        isPartnership: true),
    PlaceComponent(
        name: '우지커피',
        distance: 144,
        imageUrl: 'assets/image/uzi.png',
        isPartnership: true),
    PlaceComponent(
        name: '명랑핫도그',
        distance: 510,
        imageUrl: 'assets/image/myunrang.png',
        isPartnership: false),
    PlaceComponent(
        name: '혼맛스시',
        distance: 180,
        imageUrl: 'assets/image/honmat.png',
        isPartnership: true),
    PlaceComponent(
        name: '우지커피',
        distance: 144,
        imageUrl: 'assets/image/uzi.png',
        isPartnership: true),
    PlaceComponent(
        name: '명랑핫도그',
        distance: 510,
        imageUrl: 'assets/image/myunrang.png',
        isPartnership: false),
  ];

  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          MenuLayerTitleComponent(
            address: '관악구 신림동',
            title: '근처에서 뭐할까?',
            textStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          Container(
            height: 150,
            child: ListView.separated(
              itemCount: places.length,
              itemBuilder: (context, index) {
                return places[index];
              },
              separatorBuilder: (context, index) => SizedBox(width: 15,),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 150,
            child: ListView.separated(
              itemCount: places.length,
              itemBuilder: (context, index) {
                return places[index];
              },
              separatorBuilder: (context, index) => SizedBox(width: 15,),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}

class PlaceComponent extends StatelessWidget {
  final String name;
  final int distance;
  final String imageUrl;
  final bool isPartnership;

  const PlaceComponent(
      {Key? key,
      required this.name,
      required this.distance,
      required this.imageUrl,
      required this.isPartnership})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = (MediaQuery.of(context).size.width - 32 - 45) / 3.5;
    return SizedBox(
      width: size,
      height: size,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                child: Image.asset(imageUrl),
                borderRadius: BorderRadius.circular(10),
              ),
              if(isPartnership)...[
                partnershipBanner(),
              ],
            ],
          ),
          const SizedBox(height: 8,),
          Text(
            name,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4,),
          Text(
            '${distance}m',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xffACACAC)),
          ),
        ],
      ),
    );
  }

  Widget partnershipBanner() {
    return Positioned(
      right: 0,
      top: 0,
      child: Container(
        width: 33,
        height: 24,
        decoration: BoxDecoration(
          color: Color(0xff38B7FF),
          borderRadius: BorderRadius.only(topRight: Radius.circular(5))
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Center(
            child: Text(
              '제휴',
              style: TextStyle(color: whiteColor, fontSize: 13),
            ),
          ),
        ),
      ),
    );
  }
}
