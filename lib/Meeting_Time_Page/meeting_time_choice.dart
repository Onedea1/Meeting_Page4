import 'package:flutter/material.dart';
import 'package:meeting_page4/Meeting_Time_Page/Choice_Time/choice_time.dart';
import 'package:meeting_page4/const/colors.dart';
//
class MeetingTime extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 37,
        ),
        //모임시간
        //
        Row(
          children: [
            Container(
              height: 17,
              width: 49,
              child: Text(
                '모임시간',
                style: TextStyle(
                  height: 1.2,
                  fontSize: 14,
                  fontFamily: 'SUIT',
                  fontWeight: FontWeight.w600,
                  color: BLACK,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 50,),

        CoiceTime(),

      ],
    );
  }
}
