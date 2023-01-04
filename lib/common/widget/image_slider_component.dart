import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  final List<Widget> images;

  const ImageSlider({Key? key, required this.images}) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            height: 300.0,
            viewportFraction: 1,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
          items: widget.images,
        ),
        Positioned(
          left: 0,
          bottom: 16,
          right: 0,
          child: SliderIndicator(
            images: widget.images,
            controller: _controller,
            current: _current,
          ),
        ),
      ],
    );
  }
}

class SliderIndicator extends StatefulWidget {
  final List<Widget> images;
  final CarouselController controller;
  final int current;

  const SliderIndicator(
      {Key? key,
        required this.images,
        required this.controller,
        required this.current})
      : super(key: key);

  @override
  State<SliderIndicator> createState() => _SliderIndicatorState();
}

class _SliderIndicatorState extends State<SliderIndicator> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.images.asMap().entries.map((entry) {
        return GestureDetector(
          onTap: () {
            widget.controller.animateToPage(entry.key);
          },
          child: Container(
            width: 8.0,
            height: 8.0,
            margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 2.0),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: (Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black)
                    .withOpacity(widget.current == entry.key ? 0.9 : 0.4)),
          ),
        );
      }).toList(),
    );
  }
}