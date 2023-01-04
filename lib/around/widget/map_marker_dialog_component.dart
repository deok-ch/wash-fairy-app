import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wash_fairy/around/widget/wash_info_component.dart';
import 'package:wash_fairy/around/widget/wash_state_component.dart';


class MapMarkerDialogComponent extends StatelessWidget {
  const MapMarkerDialogComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 4,
      insetPadding: const EdgeInsets.symmetric(horizontal: 12),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      alignment: const Alignment(1.0, 0.7),
      child: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WashInfoComponent(),
                WashStateComponent(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


