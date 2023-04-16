import 'package:flutter/material.dart';

class MyHours extends StatelessWidget {
  int hours;

  MyHours({required this.hours});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        child: Center(
          child: Text(
            hours.toString(),
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'SUIT',
              fontWeight: FontWeight.w600,
              color: Color(0xFF474747),
            ),
          ),
        ),
      ),
    );
  }
}
