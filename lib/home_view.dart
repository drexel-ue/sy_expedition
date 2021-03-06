import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sy_expedition/arrow_icon.dart';
import 'package:sy_expedition/leopard.dart';
import 'package:sy_expedition/page_1.dart';
import 'package:sy_expedition/page_2.dart';
import 'package:sy_expedition/page_indicator.dart';
import 'package:sy_expedition/page_offset_notifier.dart';
import 'package:sy_expedition/share_button.dart';
import 'package:sy_expedition/sy_app_bar.dart';
import 'package:sy_expedition/the_72_km.dart';
import 'package:sy_expedition/travel_dots.dart';
import 'package:sy_expedition/vulture.dart';

class HomeView extends StatefulWidget {
  static MediaQueryData data;

  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    HomeView.data = MediaQuery.of(context);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PageOffsetNotifier>(
      create: (_) => PageOffsetNotifier(_pageController),
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            alignment: Alignment.center,
            children: [
              PageView(
                controller: _pageController,
                physics: const ClampingScrollPhysics(),
                children: const [
                  Page1(),
                  Page2(),
                ],
              ),
              Leopard(),
              Vulture(),
              SyAppBar(),
              ShareButton(),
              PageIndicator(),
              ArrowIcon(),
              The72km(),
              TravelDots(),
            ],
          ),
        ),
      ),
    );
  }
}
