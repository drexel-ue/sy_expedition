import 'package:flutter/material.dart';
import 'package:sy_expedition/color_constants.dart';

class ShareButton extends StatelessWidget {
  const ShareButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final right = size.width * .1;
    final bottom = size.height * .01;

    return Positioned(
      bottom: bottom,
      right: right,
      child: Icon(Icons.share, color: white),
    );
  }
}
