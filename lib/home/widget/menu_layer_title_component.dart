import 'package:flutter/cupertino.dart';
import 'package:wash_fairy/common/widget/gps_row_component.dart';

class MenuLayerTitleComponent extends StatelessWidget {
  final String address;
  final String title;
  final TextStyle textStyle;

  const MenuLayerTitleComponent({Key? key, required this.address, required this.title, required this.textStyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: textStyle,
        ),
        GpsRowComponent(address: address),
      ],
    );
  }
}
