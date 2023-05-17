import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.screenSize, required this.texthint, required this.margintop,
  });

  final Size screenSize;
  final String texthint;
  final double margintop;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize.width,
      height: 50,
      margin: EdgeInsets.fromLTRB(10,margintop,10,0),
      color: Colors.white,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: texthint,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(color: Colors.white),
              gapPadding: 10
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(color: Colors.white),
              gapPadding: 10
          ),
        ),
      ),
    );
  }
}