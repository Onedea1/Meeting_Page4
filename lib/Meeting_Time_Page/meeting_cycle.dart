import 'package:flutter/material.dart';
import 'package:meeting_page4/const/colors.dart';
//
//모임주기

class MeetingCycle extends StatefulWidget {
  const MeetingCycle({Key? key}) : super(key: key);

  @override
  State<MeetingCycle> createState() => _MeetingCycleState();
}

class _MeetingCycleState extends State<MeetingCycle> {

  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '모임주기',
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'SUIT',
              fontWeight: FontWeight.w600,
              color: BLACK,
            ),
          ),
          Row(
            children: [
              Transform.scale(
                scale: 0.8,
                child: Checkbox(
                    checkColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    value: _isChecked,
                    onChanged: (value) {
                      setState(() {
                        _isChecked = value;
                      });
                    }),
              ),
              Text(
                '미정',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'SUIT',
                  fontWeight: FontWeight.w600,
                  color: BLACK,
                ),
              ),
            ],
          ),
        ],
      );
  }
}
