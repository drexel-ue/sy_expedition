import 'package:flutter/material.dart';
import 'package:sy_expedition/color_constants.dart';
import 'package:sy_expedition/home_view.dart';

class ArrowIcon extends StatelessWidget {
  const ArrowIcon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = HomeView.data.size;

    return Positioned(
      right: size.width * .1 - 5,
      top: size.height * .67,
      child: Icon(
        Icons.keyboard_arrow_up,
        color: lighterGrey,
        size: 30,
      ),
    );
  }
}
