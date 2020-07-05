import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sy_expedition/color_constants.dart';
import 'package:sy_expedition/home_view.dart';
import 'package:sy_expedition/page_offset_notifier.dart';

class PageIndicator extends StatelessWidget {
  PageIndicator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = HomeView.data.size;

    return Positioned(
      bottom: size.height * .01 + size.width * .025,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Consumer<PageOffsetNotifier>(
            builder: (_, PageOffsetNotifier value, __) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 600),
                height: size.width * .025,
                width: size.width * .025,
                decoration: BoxDecoration(
                  color: value.page.round() == 1 ? lightGrey : white,
                  borderRadius: BorderRadius.all(Radius.circular(999)),
                ),
              );
            },
          ),
          SizedBox(width: 8),
          Consumer<PageOffsetNotifier>(
            builder: (_, PageOffsetNotifier value, __) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 600),
                height: size.width * .025,
                width: size.width * .025,
                decoration: BoxDecoration(
                  color: value.page.round() == 1 ? white : lightGrey,
                  borderRadius: BorderRadius.all(Radius.circular(999)),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
