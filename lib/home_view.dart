import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sy_expedition/color_constants.dart';
import 'package:sy_expedition/leopard.dart';
import 'package:sy_expedition/page_1.dart';
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
            alignment: Alignment.center,
            children: [
              PageView(
                controller: _pageController,
                physics: const ClampingScrollPhysics(),
                children: const [
                  Page1(),
                  Center(child: Text('2')),
                ],
              ),
              Leopard(),
              Vulture(),
              SyAppBar(),
              _ShareButton(),
              _PageIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}

class _ShareButton extends StatelessWidget {
  const _ShareButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final right = size.width * .1;
    final bottom = size.height * .04;

    return Positioned(
      bottom: bottom,
      right: right,
      child: Icon(Icons.share, color: white),
    );
  }
}

class _PageIndicator extends StatelessWidget {
  _PageIndicator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Positioned(
      bottom: size.height * .04 + size.width * .025,
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
