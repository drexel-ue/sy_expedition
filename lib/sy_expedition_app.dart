import 'package:flutter/material.dart';
import 'package:sy_expedition/home_view.dart';
import 'package:sy_expedition/sy_expedition_theme.dart';

class SyExpeditionApp extends StatelessWidget {
  const SyExpeditionApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SY Expedition',
      theme: syExpeditionTheme(),
      home: HomeView(),
    );
  }
}
