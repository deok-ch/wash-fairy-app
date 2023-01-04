import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wash_fairy/const/palette.dart';

class WashSupportBadgeComponent extends StatelessWidget {
  const WashSupportBadgeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        color: blueColor.withOpacity(0.1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        child: Row(
          children: const [
            Icon(
              Icons.auto_awesome,
              size: 13.5,
              color: blueColor,
            ),
            Text(
              '비서',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: blueColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
