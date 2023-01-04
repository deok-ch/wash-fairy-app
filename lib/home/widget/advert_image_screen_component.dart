import 'package:flutter/cupertino.dart';
import 'package:wash_fairy/const/palette.dart';

class AdvertImageScreenComponent extends StatelessWidget {
  final String imageUrl;

  const AdvertImageScreenComponent({Key? key, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imageUrl,
            ),
          ),
          Positioned(
            top: 24,
            left: 30,
            child: Container(
              width: 38,
              height: 26,
              decoration: BoxDecoration(
                color: splashBackGroundColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Center(
                child: Text(
                  'TIP',
                  style: TextStyle(
                    color: whiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            top: 53,
            left: 30,
            child: Text(
              '건조한 겨울',
              style: TextStyle(
                color: whiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),
          const Positioned(
            top:85,
            left: 30,
            child: Text(
              '세탁&보관법',
              style: TextStyle(
                color: whiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
