import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: <Widget>[
        // The containers in the background
         Column(
          children: <Widget>[
             Container(
              height: MediaQuery.of(context).size.height * .35,
              color: Colors.blue,
            ),
             Container(
              height: MediaQuery.of(context).size.height * .65,
              color: Colors.red,
            )
          ],
        ),
        // The card widget with top padding,
        // incase if you wanted bottom padding to work,
        // set the `alignment` of container to Alignment.bottomCenter
         Container(
          alignment: Alignment.bottomCenter,
          padding:  EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * .6,
              right: 20.0,
              left: 20.0),
          child:  Container(
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            child:  Card(
              color: Colors.white,
              elevation: 4.0,
            ),
          ),
        )
      ],
    );
  }
}