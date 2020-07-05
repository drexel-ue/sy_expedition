import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sy_expedition/asset_constants.dart';
import 'package:sy_expedition/page_offset_notifier.dart';

class Vulture extends StatelessWidget {
  const Vulture({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Consumer<PageOffsetNotifier>(
      builder: (BuildContext context, PageOffsetNotifier value, Widget child) {
        return Positioned(
          left: -value.offset + width * 1.35,
          width: width * .3,
          child: child,
        );
      },
      child: Image.asset(vulture),
    );
  }
}
