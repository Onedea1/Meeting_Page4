import 'package:flutter/material.dart';
import 'package:meeting_page4/Meeting_Time_Page/Choice_Time/choice_time.dart';
import 'package:meeting_page4/Meeting_Time_Page/meeting_cycle_button.dart';
import 'package:meeting_page4/Meeting_Time_Page/meeting_time_choice.dart';
import 'package:meeting_page4/Meeting_Time_Page/title1.dart';
import 'package:meeting_page4/Meeting_Time_Page/title2.dart';
import 'package:meeting_page4/Meeting_Time_Page/day_choice.dart';
import 'package:meeting_page4/const/colors.dart';
import 'Meeting_Time_Page/meeting_cycle.dart';
//

class MeetingTimePage extends StatefulWidget {

  @override
  State<MeetingTimePage> createState() => _MeetingTimePageState();
}

class _MeetingTimePageState extends State<MeetingTimePage> {
  final int maxLength = 500;
  List<String> selectedWeekdays = [];
  String textValue = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFFF2F2F2),
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: ImageIcon(
            AssetImage('assets/images/Back.png'),
            size: 26,
            color: BLACK,
          ),
          onPressed: () {},
        ),
        //backgroundColor: Color(0xFFF2F2F2),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Column(
                children: [
                  Title1(),
                  Title2(),
                  MeetingCycle(),
                  MeetingCycleButton(),
                  DayChoice(),
                  MeetingTime(),
                  SizedBox(height: 50,),

                  ElevatedButton(
                    child: Text('다음'),
                    style: TextButton.styleFrom(
                      fixedSize: Size(342, 56),
                      elevation: 0,
                      backgroundColor: MIXIN_BLACK_4,
                      foregroundColor: Color(0xFFFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
