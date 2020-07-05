import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sy_expedition/color_constants.dart';
import 'package:sy_expedition/home_view.dart';
import 'package:sy_expedition/page_offset_notifier.dart';

class TravelDots extends StatelessWidget {
  const TravelDots({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = HomeView.data.size.width;

    return Positioned(
      bottom: HomeView.data.size.height * .15,
      child: Consumer<PageOffsetNotifier>(
        builder: (_, PageOffsetNotifier value, __) {
          return Opacity(
            opacity: value.page,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: width * .14,
                  height: width * .027,
                ),
                Positioned(
                  left: 0 + (width * .017 + width * .015 + width * .017 + width * .017 / 2) - (width * .017 + width * .015 + width * .017 + width * .017 / 2) * value.page,
                  child: Container(
                    height: width * .027,
                    width: width * .027,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(999)),
                      border: Border.all(color: white, width: 1.5),
                    ),
                  ),
                ),
                Positioned(
                  left: width * .017 + width * .027 + (width * .017 + width * .015 + width * .017 / 2) - (width * .017 + width * .015 + width * .017 / 2) * value.page,
                  child: Container(
                    height: width * .015,
                    width: width * .015,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.all(Radius.circular(999)),
                    ),
                  ),
                ),
                Positioned(
                  right:
                      (width * .017 + width * .027) * value.page + (width * .017 + width * .015 + width * .017 / 2) - (width * .017 + width * .015 + width * .017 / 2) * value.page,
                  child: Container(
                    height: width * .015,
                    width: width * .015,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.all(Radius.circular(999)),
                    ),
                  ),
                ),
                Positioned(
                  right: 0 + (width * .017 + width * .015 + width * .017 + width * .017 / 2) - (width * .017 + width * .015 + width * .017 + width * .017 / 2) * value.page,
                  child: Container(
                    height: width * .027,
                    width: width * .027,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.all(Radius.circular(999)),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
