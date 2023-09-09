import 'package:flutter/material.dart';
import 'package:internstage1/mainScreen.dart';
import 'package:internstage1/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Personal Details',

      home: MainScreen(),
    );
  }
}




