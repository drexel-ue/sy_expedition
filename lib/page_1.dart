import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: height * .155,
        ),
        const RotatedBox(
          quarterTurns: 1,
          child: Text(
            '72',
            style: TextStyle(
              fontSize: 360,
              fontWeight: FontWeight.bold,
              height: 1.3,
              letterSpacing: -5,
            ),
          ),
        ),
      ],
    );
  }
}
