import 'package:flutter/material.dart';

class TheLabel extends StatelessWidget {
  const TheLabel({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: screenSize.width,
      color: Colors.grey.shade300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.file_upload_outlined,
            color: Colors.black,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'POST NEW OPPORTUNITY',
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}