import 'package:flutter/material.dart';
import 'package:scholarship_ui/custom_appbar.dart';
import 'package:scholarship_ui/widgets/badge_widget.dart';
import 'package:scholarship_ui/widgets/my_container.dart';
import 'package:scholarship_ui/widgets/text_form_field.dart';
import 'package:scholarship_ui/widgets/the_label.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 60),
        child: CustomAppbar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TheLabel(screenSize: screenSize),
            Stack(children: [
              Image.asset('assets/brave.browser.jpg'),
              MyTextField(
                  screenSize: screenSize,
                  texthint: 'Title, Keywords, or Phrase',
                  margintop: 285),
              MyTextField(
                  screenSize: screenSize,
                  texthint: 'Location, Country',
                  margintop: 338),
              Container(
                margin: EdgeInsets.fromLTRB(10, 396, 9, 0),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[900],
                        minimumSize: Size(screenSize.width, 53),
                        shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.zero)),
                    child: Row(mainAxisSize: MainAxisSize.min, children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 30,
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text('Find',
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                      Spacer(
                        flex: 2,
                      ),
                    ])),
              )
            ]),
            const SizedBox(
              height: 25,
            ),
            Text(
              'LATEAST OPPURTUNITIES',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  color: Colors.black),
            ),
            SizedBox(
              height: 70,
            ),
            MyContainer(
                screenSize: screenSize,
                mainPic: 'assets/firstpic.jpg',
                title:
                    'Atlantic Dialogues Emerging Leaders Program in Morocco, 2024',
                atOrganiztion: '@ Policy Center for the New South',
                country: 'Morocco',publishDate: 'Published 2 days ago',
                row: Row(
                children: [
                  BadgeTypeWidget(height: 35, width: 110, color: Colors.deepOrangeAccent, text: 'CONFERENCE'),
                  SizedBox(width: 10,),
                  BadgeTypeWidget(height: 40, width: 110, color: Colors.green, text: 'LEADERSHIP\nPROGRAM'),
                ],
              ),)
          ],
        ),
      ),
    );
  }
}


