import 'package:flutter/material.dart';
import 'package:meeting_page4/choice_cycle/choice_cycle.dart';
import 'package:meeting_page4/const/colors.dart';
//
class MeetingCycleButton extends StatefulWidget {
  const MeetingCycleButton({Key? key}) : super(key: key);

  @override
  State<MeetingCycleButton> createState() => _MeetingCycleButtonState();
}

class _MeetingCycleButtonState extends State<MeetingCycleButton> {

  int ?newsAgency;

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
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                height: 370,
                width: double.infinity,
                child: Column(

                  children: [
                    // Container(
                    //   height: 280,
                    //   width: double.infinity,
                    //   color: Colors.white,
                    //   child: Center(
                    //     child: ListWheelScrollView(
                    //       itemExtent: 75,
                    //       children: items,
                    //       physics: FixedExtentScrollPhysics(),
                    //       onSelectedItemChanged: (index) => {
                    //         newsAgency = index,
                    //       },
                    //     ),
                    //   ),
                    // ),
                    ChoiceCycle(),
                    Expanded(
                      child: Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: MIXIN_POINT_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            elevation: 8.0,
                          ),
                          onPressed: () async {
                            Navigator.of(context).pop();
                            setState(() {
                            });
                            print(newsAgency);
                          },
                          child: Container(
                            width: 342,
                            height: 56,
                            child: Center(
                              child: Text(
                                '확인',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      );
  }
}
