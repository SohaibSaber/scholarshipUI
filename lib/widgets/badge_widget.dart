import 'package:flutter/material.dart';

class BadgeTypeWidget extends StatelessWidget {
  const BadgeTypeWidget({
    super.key, required this.height, required this.width, required this.color, required this.text,
  });
  final double height;
  final double width;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        color: color,
        child: Text(
            text,style: TextStyle(color: Colors.white,
        ),
          textAlign: TextAlign.center,
        ),

      ),
    );
  }
}