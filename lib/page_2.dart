import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sy_expedition/color_constants.dart';
import 'package:sy_expedition/page_offset_notifier.dart';

class Page2 extends StatelessWidget {
  const Page2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * .1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _HolyGlow(),
          SizedBox(height: size.height * .21),
          _TravelDetails(),
          SizedBox(height: size.height * .05),
          _StartCampBaseCampRow(),
          SizedBox(height: size.height * .025),
          _StartTimeEndTime(),
        ],
      ),
    );
  }
}

class _HolyGlow extends StatelessWidget {
  const _HolyGlow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Consumer<PageOffsetNotifier>(
      builder: (_, PageOffsetNotifier value, __) {
        return SizedBox(
          height: size.height * 0.21 + size.width * .55,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: size.height * 0.21 + (size.width * .55 - (size.width * .55 * value.page)) / 2),
              Container(
                height: size.width * .55 * value.page,
                width: size.width * .55 * value.page,
                decoration: const BoxDecoration(
                  color: lightGrey,
                  borderRadius: BorderRadius.all(Radius.circular(999)),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _TravelDetails extends StatelessWidget {
  const _TravelDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffsetNotifier>(
      builder: (BuildContext context, PageOffsetNotifier value, Widget child) {
        return Transform.translate(
          offset: Offset(MediaQuery.of(context).size.width * .8 * (1 - value.page), 0),
          child: Opacity(
            opacity: math.max<double>(0, 4 * value.page - 3),
            child: child,
          ),
        );
      },
      child: Text(
        'Travel details',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 18,
          color: white,
        ),
      ),
    );
  }
}

class _StartCampBaseCampRow extends StatelessWidget {
  const _StartCampBaseCampRow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * .07),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Start Camp',
            style: TextStyle(color: white),
          ),
          SizedBox(width: width * .25),
          Text(
            'Base Camp',
            style: TextStyle(color: white),
          ),
        ],
      ),
    );
  }
}

class _StartTimeEndTime extends StatelessWidget {
  const _StartTimeEndTime({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * .07),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '02:40 pm',
            style: TextStyle(color: lightGrey),
          ),
          SizedBox(
            width: width * .3,
            child: Center(
              child: Text(
                '72 km',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Text(
            '07:30 am',
            style: TextStyle(color: lightGrey),
          ),
        ],
      ),
    );
  }
}
