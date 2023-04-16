import 'package:flutter/material.dart';
import 'package:meeting_page4/const/colors.dart';

//언제 모임을 하고 싶나요?


class Title2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 24, 0, 44),
      child: Text(
        '언제 모임을 하고 싶나요?',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          fontFamily: 'SUIT',
          color: BLACK,
        ),
      ),
    );
  }
}
