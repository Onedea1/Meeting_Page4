import 'package:flutter/material.dart';

class AmPm extends StatelessWidget {
  final bool isItAm;

  AmPm({required this.isItAm});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        child: Center(
          child: Text(
            isItAm == true ? '오전' : '오후',
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
