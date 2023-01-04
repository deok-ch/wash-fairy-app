import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GpsRowComponent extends StatefulWidget {
  final String address;
  const GpsRowComponent({Key? key, required this.address}) : super(key: key);

  @override
  State<GpsRowComponent> createState() => _GpsRowComponentState();
}

class _GpsRowComponentState extends State<GpsRowComponent> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Color(0xffACACAC),
      ),
      onPressed: () {},
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.address,
            style:
            TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
          ),
          SizedBox(width: 5.5,),
          Icon(Icons.gps_not_fixed_outlined, size: 15)
        ],
      ),
    );
  }
}
