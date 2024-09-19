import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class VerticalPageViewPage extends StatefulWidget {
  const VerticalPageViewPage({super.key});

  @override
  VerticalPageViewPageState createState() => VerticalPageViewPageState();
}

class VerticalPageViewPageState extends State<VerticalPageViewPage> {
  final PageController _pageController = PageController();

  List<Widget> pages = [
    Container(
      color: Colors.red,
      child: const Center(
        child: Text('Page 1'),
      ),
    ),
    Container(
      color: Colors.blue,
      child: const Center(
        child: Text('Page 2'),
      ),
    ),
    Container(
      color: Colors.green,
      child: const Center(
        child: Text('Page 3'),
      ),
    ),
    Container(
      color: Colors.brown,
      child: const Center(
        child: Text('Page 4'),
      ),
    ),
    Container(
      color: Colors.purple,
      child: const Center(
        child: Text('Page 5'),
      ),
    ),
  ];

  bool isScrolling = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Listener(
            onPointerSignal: (event) async {
              if (event is PointerScrollEvent && isScrolling == false) {
                isScrolling = true;
                if (event.scrollDelta.dy > 0) {
                  await nextPage();
                } else {
                  await previousPage();
                }
                isScrolling = false;
              }
            },
            child: PageView(
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: pages,
            ),
          ),
          Positioned.fill(
            right: 16,
            child: Align(
              alignment: Alignment.centerRight,
              child: SmoothPageIndicator(
                controller: _pageController,
                count: pages.length,
                axisDirection: Axis.vertical,
                effect: const SwapEffect(
                  dotHeight: 16,
                  dotWidth: 16,
                  dotColor: Colors.white,
                  activeDotColor: Colors.black,
                  type: SwapType.yRotation,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> nextPage() async {
    if (_pageController.page!.toInt() == pages.length - 1) return;
    await _pageController.animateToPage(
      _pageController.page!.toInt() + 1,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeIn,
    );
  }

  Future<void> previousPage() async {
    if (_pageController.page!.toInt() == 0) return;
    await _pageController.animateToPage(
      _pageController.page!.toInt() - 1,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeIn,
    );
  }
}
