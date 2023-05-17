import 'package:flutter/material.dart';
import 'package:scholarship_ui/widgets/second_container.dart';
import 'package:scholarship_ui/widgets/the_label.dart';

import '../custom_appbar.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery
            .of(context)
            .size
            .width, 60),
        child: CustomAppbar(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              TheLabel(
                screenSize: screenSize,
              ),
              Image.asset('assets/er.jpg',),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                width: screenSize.width,
                height: 500,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black12,
                      width: 1,
                    )),
                child: Column(
                  children: [
                    Text(
                      'Atlantic Dialogues Emerging Leaders Program in Morocco, 2024',
                      style:
                      TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      children: [
                        SecondContainer(
                            height: 25,
                            width: 100,
                            color: Colors.deepOrange,
                            text: 'CONFERENCE'),
                        SizedBox(
                          width: 18,
                        ),
                        SecondContainer(
                            height: 25,
                            width: 140,
                            color: Colors.deepPurple,
                            text: 'LEADERSHIP PROGRAM'),
                      ],
                    ),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 5,),
                        Text('Marrakech', style: TextStyle(
                            color: Colors.grey
                        ),),
                        SizedBox(width: 5,),
                        SecondContainer(height: 25,
                            width: 90,
                            color: Colors.deepPurple,
                            text: 'View On Map')
                      ],),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        Icon(Icons.house_siding_sharp, color: Colors.grey,),
                        SizedBox(width: 5,),
                        RichText(text: TextSpan(
                            text: 'Policy Center for the New South  ',
                            style: TextStyle(
                              color: Colors.grey
                            ),
                            children: [
                            TextSpan(text: 'posted 1 day ago', style: TextStyle(
                            color: Colors.deepPurple, fontSize: 10)
                            )]
                        )

                        )
                      ],),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_month,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 5,),
                        Text('Posted: May 15, 2023 -Accepting\napplications', style: TextStyle(
                            color: Colors.grey,
                        ),),
                        SizedBox(width: 5,),
                      ],),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
