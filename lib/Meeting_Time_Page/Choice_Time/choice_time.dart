import 'package:flutter/material.dart';
import 'package:meeting_page4/Meeting_Time_Page/Choice_Time/am_pm.dart';
import 'package:meeting_page4/Meeting_Time_Page/Choice_Time/hours.dart';
import 'package:meeting_page4/Meeting_Time_Page/Choice_Time/minutes.dart';

class CoiceTime extends StatefulWidget {
  @override
  State<CoiceTime> createState() => _CoiceTimeState();
}

class _CoiceTimeState extends State<CoiceTime> {
  late FixedExtentScrollController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = FixedExtentScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //am_pm
              Container(
                width: 70,
                height: 100,
                child: ListWheelScrollView.useDelegate(
                  controller: _controller,
                  itemExtent: 35,
                  perspective: 0.005,
                  diameterRatio: 1000,
                  // useMagnifier: true,
                  // magnification: 1.2,
                  physics: FixedExtentScrollPhysics(),
                  childDelegate: ListWheelChildBuilderDelegate(
                      childCount: 2,
                      builder: (context, index) {
                        if (index == 0) {
                          return AmPm(
                            isItAm: true,
                          );
                        } else {
                          return AmPm(
                            isItAm: false,
                          );
                        }
                      }),
                ),
              ),
              SizedBox(
                width: 60,
              ),
              // hours wheel
              Container(
                width: 70,
                height: 100,
                child: ListWheelScrollView.useDelegate(
                  // onSelectedItemChanged: (value) ==> print(value),
                  controller: _controller,
                  itemExtent: 30,
                  perspective: 0.005,
                  diameterRatio: 1000,
                  // useMagnifier: true,
                  // magnification: 1.2,
                  physics: FixedExtentScrollPhysics(),
                  childDelegate: ListWheelChildLoopingListDelegate(
                    children: List<Widget>.generate(13, (index) {
                      return MyHours(
                        hours: index,
                      );
                    }),
                  ),
                ),
              ),
              Text(':'),

              // minutes wheel
              Container(
                width: 70,
                height: 100,
                child: ListWheelScrollView.useDelegate(
                  // onSelectedItemChanged: ,
                  controller: _controller,
                  itemExtent: 35,
                  perspective: 0.005,
                  diameterRatio: 1000,
                  // useMagnifier: true,
                  // magnification: 1.2,
                  physics: FixedExtentScrollPhysics(),
                  childDelegate: ListWheelChildLoopingListDelegate(
                    children: List<Widget>.generate(60, (index) {
                      return MyMinutes(
                        mins: index,
                      );
                    }),
                  ),
                ),
              ),
            ],
          ),
        ],
    );
  }
}
