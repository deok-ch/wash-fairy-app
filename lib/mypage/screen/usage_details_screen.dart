import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wash_fairy/const/palette.dart';

class UsageDetailsScreen extends StatelessWidget {
  const UsageDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<UsageDetails> usageDetails = [
      UsageDetails(name: '에코런드렛', createAt: '2022.11.17 12:30', point: 300),
      UsageDetails(name: '에코런드렛', createAt: '2022.11.17 12:30', point: 300),
      UsageDetails(name: '크린토피아', createAt: '2022.12.17 12:30', point: 300),
      UsageDetails(name: '에코런드렛', createAt: '2022.11.17 12:30', point: 300),
      UsageDetails(name: '크린토피아', createAt: '2022.11.17 12:30', point: 300),
      UsageDetails(name: '에코런드렛', createAt: '2022.11.17 12:30', point: 600),
      UsageDetails(name: '크린토피아', createAt: '2022.11.17 12:30', point: 700),
      UsageDetails(name: '에코런드렛', createAt: '2022.11.17 12:30', point: 800),
      UsageDetails(
          name: '런드리익스프레스 신림점', createAt: '2022.08.17 12:30', point: 1000),
      UsageDetails(name: '에코런드렛', createAt: '2022.11.17 12:30', point: 300),
      UsageDetails(name: '에코런드렛', createAt: '2022.11.17 12:30', point: 300),
      UsageDetails(
          name: '런드리익스프레스 신림점', createAt: '2022.04.17 12:30', point: 300),
      UsageDetails(name: '에코런드렛', createAt: '2022.11.17 12:30', point: 300),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '이용내역',
          style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const SizedBox(
                height: 28,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return usageDetails[index];
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 25,
                    thickness: 1,
                  );
                },
                itemCount: usageDetails.length,
              ),
              SizedBox(height: 25,),
            ],
          ),
        ),
      ),
    );
  }
}

class UsageDetails extends StatelessWidget {
  final String name;
  final String createAt;
  final int point;

  const UsageDetails(
      {Key? key,
      required this.name,
      required this.createAt,
      required this.point})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              createAt,
              style: TextStyle(
                color: Color(0xffA8AEB8),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Text(
          '+${point}p 적립',
          style: TextStyle(
            color: blueColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
