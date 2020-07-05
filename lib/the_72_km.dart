import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sy_expedition/page_offset_notifier.dart';

class The72km extends StatelessWidget {
  const The72km({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * .10125,
      child: Consumer<PageOffsetNotifier>(
        builder: (_, PageOffsetNotifier value, Widget child) {
          return Opacity(
            opacity: math.max<double>(0, 4 * value.page - 3),
            child: child,
          );
        },
        child: Center(
          child: Text(
            '72 km',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
