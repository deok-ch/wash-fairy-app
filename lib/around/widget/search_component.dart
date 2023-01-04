import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wash_fairy/around/screen/around_search_screen.dart';
import 'package:wash_fairy/const/palette.dart';

class SearchComponent extends StatelessWidget {

  const SearchComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        height: 42,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Color(0xffF5F5F5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 16,
            ),
            Icon(Icons.search,color: Color(0xffACACAC),),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TextField(
                readOnly: true,
                onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => AroundSearchScreen(),));
                },
                decoration: InputDecoration(
                  hintText: '세탁소, 주변검색',
                  border: InputBorder.none,
                ),
                cursorColor: blueColor,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
