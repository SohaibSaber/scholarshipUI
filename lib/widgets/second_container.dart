import 'package:flutter/material.dart';

class SecondContainer extends StatelessWidget {
  const SecondContainer({
    super.key, required this.height, required this.width, required this.color, required this.text, this.radius = 15 ,
  });
  final double height;
  final double width;
  final double? radius;
  final Color color;
  final String text;


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius!)
      ),
      child: Text(text ,style: TextStyle(
          color: Colors.white,
          fontSize: 11
      ),
      ),
    );
  }
}