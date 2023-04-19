import 'package:flutter/material.dart';
import 'meeting_time_page.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MeetingTimePage(),
    );
  }
}
