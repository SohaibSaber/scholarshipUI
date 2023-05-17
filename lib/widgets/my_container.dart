import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({
    super.key,
    required this.screenSize,
    required this.mainPic,
    required this.title,
    required this.atOrganiztion,
    required this.country,
    required this.publishDate,
    required this.row,
  });

  final Size screenSize;
  final String mainPic;
  final String title;
  final String atOrganiztion;
  final String country;
  final String publishDate;
  final Row row;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      height: 310,
      width: screenSize.width,
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.black12,
        width: 1,
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            mainPic,
            width: 50,
            height: 50,
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            atOrganiztion,
            style: TextStyle(
                color: Colors.blue[700], letterSpacing: 0, fontSize: 12),
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            children: [
              Icon(
                Icons.location_pin,
                color: Colors.grey,
                size: 18,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                country,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            children: [
              Icon(
                Icons.calendar_month,
                color: Colors.grey,
                size: 18,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                publishDate,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            row
          ],)
        ],
      ),
    );
  }
}
