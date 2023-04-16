import 'package:flutter/material.dart';
import 'package:meeting_page4/const/colors.dart';

//모임날짜

class Title1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: Container(
        width: 86,
        height: 36,
        child: Center(
            child: Text(
          '모임날짜',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'SUIT',
            fontWeight: FontWeight.w500,
            color: MIXIN_POINT_COLOR,
          ),
        )),
        decoration: BoxDecoration(
            color: MIXIN_BLACK_5, borderRadius: BorderRadius.circular(18)),
      ),
    );
  }
}
