import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:wash_fairy/around/widget/map_category_tab_component.dart';

import 'package:wash_fairy/around/widget/search_component.dart';

class AroundSearchScreen extends ConsumerStatefulWidget {
  const AroundSearchScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<AroundSearchScreen> createState() => _AroundScreenState();
}

class _AroundScreenState extends ConsumerState<AroundSearchScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: SafeArea(
        child: Column(
          children: [
          ],
        ),
      ),
    );
  }
}
