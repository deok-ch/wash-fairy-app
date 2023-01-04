import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:wash_fairy/around/widget/map_category_tab_component.dart';
import 'package:wash_fairy/around/widget/map_marker_dialog_component.dart';

import 'package:wash_fairy/around/widget/search_component.dart';
import 'package:wash_fairy/common/widget/color_dot_component.dart';
import 'package:wash_fairy/common/widget/wash_support_badge_component.dart';

FutureProvider<Position> positionProvider = FutureProvider((ref) async {
  return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);
});

class AroundScreen extends ConsumerStatefulWidget {
  const AroundScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<AroundScreen> createState() => _AroundScreenState();
}

class _AroundScreenState extends ConsumerState<AroundScreen> {
  late LatLng position;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    LatLng watch = ref.watch(positionProvider).when(
      data: (data) {
        print('OK');
        return LatLng(
            37.566570, 126.978442); //LatLng(data.latitude, data.longitude);
      },
      error: (error, stackTrace) {
        print('error');
        return LatLng(37.566570, 126.978442);
      },
      loading: () {
        print('loading');
        return LatLng(37.566570, 126.978442);
      },
    );
    position = watch;
  }

  @override
  Widget build(BuildContext context) {
    MapType _mapType = MapType.Basic;
    LocationTrackingMode _trackingMode = LocationTrackingMode.NoFollow;
    print(position);
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 21,
          ),
          SearchComponent(),
          const SizedBox(
            height: 21,
          ),
          Expanded(
            child: Stack(
              children: [
                NaverMap(
                  initialCameraPosition: CameraPosition(
                    target: position,
                    zoom: 17,
                  ),
                  mapType: _mapType,
                  initLocationTrackingMode: _trackingMode,
                  locationButtonEnable: true,
                  indoorEnable: true,
                  maxZoom: 17,
                  minZoom: 12,
                  useSurface: kReleaseMode,
                  logoClickEnabled: false,
                  markers: [
                    Marker(
                      markerId: '123',
                      position: position,
                      onMarkerTab: (marker, iconSize) {
                        showDialog(
                          context: context,
                          builder: (context) => MapMarkerDialogComponent(),
                          barrierColor: Colors.white.withOpacity(0),
                        );
                      },
                    )
                  ],
                ),
                Positioned(
                  top: 15,
                  left: 15,
                  child: MapCategoryTabComponent(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}



