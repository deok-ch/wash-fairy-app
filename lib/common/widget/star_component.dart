import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StarComponent extends StatelessWidget {
  final double point;
  const StarComponent({Key? key, required this.point}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: getStars(point)
    );
  }

  List<Widget> getStars(double point) {
    List<Widget> stars = [];
    for(int i=1; i<=5; i++){
      if(point >= i) {
        stars.add(const Icon(Icons.star, color: Color(0xffFFB800), size: 23,));
      }else {
        if(i - point >= 1) {
          stars.add(const Icon(Icons.star_border_outlined, color: Color(0xffFFB800), size: 23,));
        }else {
          if(i - point <= 0.5) {
            stars.add(const Icon(Icons.star_half_outlined, color: Color(0xffFFB800), size: 23,));
          }else {
            stars.add(const Icon(Icons.star_border_outlined, color: Color(0xffFFB800), size: 23,));
          }
        }
      }
    }
    return stars;
  }
}

//별이 다 참  ex) 3.5 1,2,3 // 0.5 1.5
//별이 안 참
//별이 반만 참
