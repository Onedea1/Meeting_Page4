import 'package:flutter/material.dart';
import 'package:meeting_page4/const/colors.dart';


class MeetingCycleButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return //모임주기
      //
      TextButton(
        child: Text(
          '모임 주기를 선택해주세요',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontFamily: 'SUIT',
            color: Color(0xFFCED0D5),
          ),
        ),
        style: TextButton.styleFrom(
          fixedSize: Size(342, 48),
          elevation: 0,
          //backgroundColor: Colors.white,
          side: BorderSide(color: Color(0xFFF0F1F5)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {},
      );
  }
}
