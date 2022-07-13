import 'package:flutter/material.dart';
import 'package:portfolio_web/util/util.dart';
import 'package:portfolio_web/widgets/body.dart';
import 'package:portfolio_web/widgets/button_row.dart';

import '../widgets/contact_button.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Row(
          children: [
            CircleAvatar(
              radius: 10,
              backgroundColor: Colors.white,
              foregroundImage:
                  NetworkImage("https://picsum.photos/seed/picsum/200/300"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Betty",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
        actions: [
          ContactButton(
              buttonText: "Contact me",
              icon: Icon(Icons.send_sharp),
              onPressed: () {
                launchMailto();
              })
        ],
      ),
      body:Stack(
       children: [
        Body(),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(padding: EdgeInsets.all(8),
          child:SizedBox(height: 59,child: ButtonRow(),) ,
          ),
        )
       ],
      )
    );
  }
}

