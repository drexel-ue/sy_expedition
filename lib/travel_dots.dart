import 'package:flutter/material.dart';
import 'package:sy_expedition/color_constants.dart';
import 'package:sy_expedition/home_view.dart';

class TravelDots extends StatelessWidget {
  const TravelDots({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = HomeView.data.size.width;

    return Positioned(
      bottom: HomeView.data.size.height * .15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: width * .03,
            width: width * .03,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(999)),
              border: Border.all(color: white, width: 1.5),
            ),
          ),
          SizedBox(width: width * .017),
          Container(
            height: width * .015,
            width: width * .015,
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.all(Radius.circular(999)),
            ),
          ),
          SizedBox(width: width * .017),
          Container(
            height: width * .015,
            width: width * .015,
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.all(Radius.circular(999)),
            ),
          ),
          SizedBox(width: width * .017),
          Container(
            height: width * .03,
            width: width * .03,
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.all(Radius.circular(999)),
            ),
          ),
        ],
      ),
    );
  }
}
