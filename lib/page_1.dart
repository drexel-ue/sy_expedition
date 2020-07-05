import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sy_expedition/color_constants.dart';
import 'package:sy_expedition/page_offset_notifier.dart';

class Page1 extends StatelessWidget {
  const Page1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * .1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: height * .155),
          _The72(),
          _TravelDescription(),
        ],
      ),
    );
  }
}

class _The72 extends StatelessWidget {
  const _The72({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffsetNotifier>(
      builder: (BuildContext context, PageOffsetNotifier value, Widget child) {
        return Transform.translate(
          offset: Offset(-value.offset, 0),
          child: child,
        );
      },
      child: const RotatedBox(
        quarterTurns: 1,
        child: Text(
          '72',
          style: TextStyle(
            fontSize: 360,
            fontWeight: FontWeight.bold,
            height: 1.15,
            letterSpacing: -5,
          ),
        ),
      ),
    );
  }
}

class _TravelDescription extends StatelessWidget {
  const _TravelDescription({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Consumer<PageOffsetNotifier>(
      builder: (BuildContext context, PageOffsetNotifier value, Widget child) {
        return Opacity(
          opacity: 1 - math.min<double>(1, value.offset * .01),
          child: child,
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height * .0255),
          Text(
            'Travel Description',
            style: TextStyle(
              fontSize: 18,
              color: white,
            ),
          ),
          SizedBox(height: height * .0255),
          Text(
            'Travel is the movement of people between distant geographical locations. Travel can be done by foot, bicycle, automobile, train, boat, bus, airplane, ship or other means, with or without luggage, and can be one way or round trip.',
            style: TextStyle(
              color: lighterGrey,
            ),
          ),
        ],
      ),
    );
  }
}
