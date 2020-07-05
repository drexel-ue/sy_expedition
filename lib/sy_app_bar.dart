import 'package:flutter/material.dart';
import 'package:sy_expedition/color_constants.dart';

class SyAppBar extends StatelessWidget {
  const SyAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Positioned(
      top: 0,
      child: Container(
        width: width,
        padding: EdgeInsets.symmetric(horizontal: width * .1, vertical: height * .03),
        child: Row(
          children: [
            const Text(
              'SY',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Icon(Icons.menu, color: white),
          ],
        ),
      ),
    );
  }
}
