import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sy_expedition/page_offset_notifier.dart';

class Page1 extends StatelessWidget {
  const Page1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Consumer<PageOffsetNotifier>(
      builder: (BuildContext context, PageOffsetNotifier value, Widget child) {
        return Transform.translate(
          offset: Offset(-value.offset, 0),
          child: child,
        );
      },
      child: Column(
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
      ),
    );
  }
}
