import 'package:flutter/cupertino.dart';

class ColorDotComponent extends StatelessWidget {
  final double size;
  final Color color;
  const ColorDotComponent({Key? key, required this.size, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(size/2),
      ),
    );
  }
}
