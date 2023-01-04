import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wash_fairy/const/button.dart';
import 'package:wash_fairy/const/palette.dart';

StateProvider selectedCategoryIdProvider = StateProvider((ref) => 1);

class MapCategoryTabComponent extends StatefulWidget {
  const MapCategoryTabComponent({Key? key}) : super(key: key);

  @override
  State<MapCategoryTabComponent> createState() =>
      _MapCategoryTabComponentState();
}

class _MapCategoryTabComponentState extends State<MapCategoryTabComponent> {
  
  List<MapCategory> categories = [
    MapCategory(id: 1, name: '세탁소'),
    MapCategory(id: 2, name: '식당'),
    MapCategory(id: 3, name: '카페'),
    MapCategory(id: 4, name: '엔터테인먼트'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => categories[index],
        separatorBuilder: (context, index) => const SizedBox(width: 8,),
        itemCount: categories.length,
      ),
    );
  }
}

class MapCategory extends ConsumerWidget {
  final int id;
  final String name;

  const MapCategory({Key? key, required this.name, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watch = ref.watch(selectedCategoryIdProvider);
    bool isSelected = watch == id;

    return TextButton(
      style: nothingButtonStyle,
      onPressed: (){
        ref.read(selectedCategoryIdProvider.notifier).update((state) => id);
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            color: isSelected ? blueColor : whiteColor,
            border: isSelected
                ? null
                : Border.all(
                    color: Color(0xffDEDEDE),
                  )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Center(
            child: Text(
              name,
              style: TextStyle(
                color: isSelected ? whiteColor : Color(0xffACACAC),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
