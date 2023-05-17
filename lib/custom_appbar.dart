import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      color: Colors.white,
     child: SafeArea(
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Image.asset('assets/scholarships.af-logo-2021.png'),
           Row(children: [
             Container(
               padding: EdgeInsets.all(1),
               decoration: BoxDecoration(
                 color: Colors.grey.shade300,
                 borderRadius: BorderRadius.circular(15)
               ),
                 child: Icon(Icons.person,color: Colors.black,size: 30,)),
             SizedBox(width: 10,),
             Icon(Icons.menu,color: Colors.black,size: 30,)
           ],)
         ],
       ),
     ),
    );
  }
}
