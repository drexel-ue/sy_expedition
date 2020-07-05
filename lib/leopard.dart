import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sy_expedition/asset_constants.dart';
import 'package:sy_expedition/home_view.dart';
import 'package:sy_expedition/page_offset_notifier.dart';

class Leopard extends StatelessWidget {
  const Leopard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffsetNotifier>(
      builder: (BuildContext context, PageOffsetNotifier value, Widget child) {
        return Positioned(
          left: -value.offset * 0.815,
          width: HomeView.data.size.width * 1.55,
          child: child,
        );
      },
      child: IgnorePointer(
        child: Image.asset(leopard),
      ),
    );
  }
}
