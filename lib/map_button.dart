import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sy_expedition/page_offset_notifier.dart';

class MapButton extends StatelessWidget {
  const MapButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffsetNotifier>(
      builder: (_, PageOffsetNotifier value, Widget child) {
        return Opacity(
          opacity: math.max<double>(0, 4 * value.page - 3),
          child: child,
        );
      },
      child: Text(
        'ON MAP',
      ),
    );
  }
}
