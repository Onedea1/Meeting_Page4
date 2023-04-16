import 'package:flutter/material.dart';
import 'package:meeting_page4/const/colors.dart';

//모임요일

class DayChoice extends StatefulWidget {
  @override
  State<DayChoice> createState() => _DayChoiceState();
}

class _DayChoiceState extends State<DayChoice> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 67),
          child: Row(
            children: [
              Text(
                '모임요일',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'SUIT',
                  fontWeight: FontWeight.w600,
                  color: BLACK,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  7,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: SizedBox(
                      height: 48,
                      width: 48,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          ['월', '화', '수', '목', '금', '토', '일'][index],
                          style: TextStyle(
                            height: 1.2,
                            fontSize: 16,
                            fontFamily: 'SUIT',
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFCED0D5),
                          ),
                        ),
                        style: TextButton.styleFrom(
                          elevation: 0,
                          side: BorderSide(color: MIXIN_BLACK_5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
//
//각각 만들기
//
// Container(
//   child: SingleChildScrollView(
//     scrollDirection: Axis.horizontal,
//     child: Row(
//       children: [
//         SizedBox(
//           height: 48,
//           width: 48,
//           child: TextButton(
//             onPressed: () {},
//             child: Text(
//               '월',
//               style: TextStyle(
//                   height: 1.2,
//                   fontSize: 16,
//                   fontFamily: 'SUIT',
//                   fontWeight: FontWeight.w500,
//                   color: Color(0xFFCED0D5)),
//             ),
//             style: TextButton.styleFrom(
//               // fixedSize: Size(48, 48),
//               elevation: 0,
//               side: BorderSide(color: MIXIN_BLACK_5),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(16),
//               ),
//             ),
//           ),
//         ),
//         SizedBox(
//           width: 8,
//         ),
//         SizedBox(
//           height: 48,
//           width: 48,
//           child: TextButton(
//             onPressed: () {},
//             child: Text(
//               '화',
//               style: TextStyle(
//                   height: 1.2,
//                   fontSize: 16,
//                   fontFamily: 'SUIT',
//                   fontWeight: FontWeight.w500,
//                   color: Color(0xFFCED0D5)),
//             ),
//             style: TextButton.styleFrom(
//               // fixedSize: Size(48, 48),
//               elevation: 0,
//               side: BorderSide(color: MIXIN_BLACK_5),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(16),
//               ),
//             ),
//           ),
//         ),
//         SizedBox(
//           width: 8,
//         ),
//         SizedBox(
//           height: 48,
//           width: 48,
//           child: TextButton(
//             onPressed: () {},
//             child: Text(
//               '수',
//               style: TextStyle(
//                   height: 1.2,
//                   fontSize: 16,
//                   fontFamily: 'SUIT',
//                   fontWeight: FontWeight.w500,
//                   color: Color(0xFFCED0D5)),
//             ),
//             style: TextButton.styleFrom(
//               // fixedSize: Size(48, 48),
//               elevation: 0,
//               side: BorderSide(color: MIXIN_BLACK_5),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(16),
//               ),
//             ),
//           ),
//         ),
//         SizedBox(
//           width: 8,
//         ),
//         SizedBox(
//           height: 48,
//           width: 48,
//           child: TextButton(
//             onPressed: () {},
//             child: Text(
//               '목',
//               style: TextStyle(
//                   height: 1.2,
//                   fontSize: 16,
//                   fontFamily: 'SUIT',
//                   fontWeight: FontWeight.w500,
//                   color: Color(0xFFCED0D5)),
//             ),
//             style: TextButton.styleFrom(
//               // fixedSize: Size(48, 48),
//               elevation: 0,
//               side: BorderSide(color: MIXIN_BLACK_5),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(16),
//               ),
//             ),
//           ),
//         ),
//         SizedBox(
//           width: 8,
//         ),
//         SizedBox(
//           height: 48,
//           width: 48,
//           child: TextButton(
//             onPressed: () {},
//             child: Text(
//               '금',
//               style: TextStyle(
//                   height: 1.2,
//                   fontSize: 16,
//                   fontFamily: 'SUIT',
//                   fontWeight: FontWeight.w500,
//                   color: Color(0xFFCED0D5)),
//             ),
//             style: TextButton.styleFrom(
//               // fixedSize: Size(48, 48),
//               elevation: 0,
//               side: BorderSide(color: MIXIN_BLACK_5),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(16),
//               ),
//             ),
//           ),
//         ),
//         SizedBox(
//           width: 8,
//         ),
//         SizedBox(
//           height: 48,
//           width: 48,
//           child: TextButton(
//             onPressed: () {},
//             child: Text(
//               '토',
//               style: TextStyle(
//                   height: 1.2,
//                   fontSize: 16,
//                   fontFamily: 'SUIT',
//                   fontWeight: FontWeight.w500,
//                   color: Color(0xFFCED0D5)),
//             ),
//             style: TextButton.styleFrom(
//               // fixedSize: Size(48, 48),
//               elevation: 0,
//               side: BorderSide(color: MIXIN_BLACK_5),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(16),
//               ),
//             ),
//           ),
//         ),
//         SizedBox(
//           width: 8,
//         ),
//         SizedBox(
//           height: 48,
//           width: 48,
//           child: TextButton(
//             onPressed: () {},
//             child: Text(
//               '일',
//               style: TextStyle(
//                   height: 1.2,
//                   fontSize: 16,
//                   fontFamily: 'SUIT',
//                   fontWeight: FontWeight.w500,
//                   color: Color(0xFFCED0D5)),
//             ),
//             style: TextButton.styleFrom(
//               // fixedSize: Size(48, 48),
//               elevation: 0,
//               side: BorderSide(color: MIXIN_BLACK_5),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(16),
//               ),
//             ),
//           ),
//         ),
//       ],
//     ),
//   ),
// ),
