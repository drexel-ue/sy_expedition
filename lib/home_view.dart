import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sy_expedition/leopard.dart';
import 'package:sy_expedition/page_offset_notifier.dart';
import 'package:sy_expedition/sy_app_bar.dart';
import 'package:sy_expedition/vulture.dart';

class HomeView extends StatefulWidget {
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
            alignment: Alignment.centerLeft,
            children: [
              Leopard(),
              Vulture(),
              PageView(
                controller: _pageController,
                physics: const ClampingScrollPhysics(),
                children: const [
                  Center(child: Text('1')),
                  Center(child: Text('2')),
                ],
              ),
              SyAppBar(),
            ],
          ),
        ),
      ),
    );
  }
}
