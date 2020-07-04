import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sy_expedition/asset_constants.dart';

class PageOffsetNotifier with ChangeNotifier {
  double _offset = 0;
  double _page = 0;

  PageOffsetNotifier(PageController pageController) {
    pageController.addListener(() {
      _offset = pageController.offset;
      _page = pageController.page;
      notifyListeners();
    });
  }

  double get offset => _offset;
  double get page => _page;
}

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
        body: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox.expand(),
            Leopard(),
            PageView(
              controller: _pageController,
              physics: const ClampingScrollPhysics(),
              children: const [
                Center(child: Text('1')),
                Center(child: Text('2')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Leopard extends StatelessWidget {
  const Leopard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffsetNotifier>(
      builder: (BuildContext context, PageOffsetNotifier value, Widget child) {
        return Positioned(
          left: -value.offset * 0.815,
          width: MediaQuery.of(context).size.width * 1.55,
          child: child,
        );
      },
      child: Image.asset(leopard),
    );
  }
}
