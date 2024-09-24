import 'package:after_layout/after_layout.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TossScrollPage extends StatefulWidget {
  const TossScrollPage({super.key});

  @override
  TossScrollPageState createState() => TossScrollPageState();
}

class TossScrollPageState extends State<TossScrollPage> with AfterLayoutMixin<TossScrollPage> {
  ScrollController mainController = ScrollController();
  ScrollController pageController = ScrollController();
  ScrollController scrollController = ScrollController();
  ScrollController scrollController2 = ScrollController();

  late double scrollSize = MediaQuery.of(context).size.height;

  bool isLayoutBuild = false;

  @override
  void afterFirstLayout(BuildContext context) {
    setState(() {
      // 스크롤 최대길이 계산
      scrollSize =
          pageController.position.maxScrollExtent + scrollController.position.maxScrollExtent + scrollController2.position.maxScrollExtent;

      // 스크롤 최대길이에 추가로 첫번째 페이지 사이즈 계산
      scrollSize += MediaQuery.of(context).size.height + 500 + 500;
      isLayoutBuild = true;
    });
  }

  @override
  void initState() {
    super.initState();
    mainController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    mainController.dispose();
    pageController.dispose();
    scrollController.dispose();
    scrollController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isLayoutBuild) {
      print(mainController.offset);
    }
    return Scaffold(
      body: Listener(
        onPointerSignal: (pointerSignal) {
          if (pointerSignal is PointerScrollEvent) {
            double pageSize = MediaQuery.of(context).size.height;

            bool isPage1 = pageController.offset >= 0 && pageController.offset < pageSize * 1;
            bool isPage2 = pageController.offset >= pageSize * 1 && pageController.offset < pageSize * 2;
            bool isPage3 = pageController.offset >= pageSize * 2 && pageController.offset < pageSize * 3;
            bool isPage4 = pageController.offset >= pageSize * 3 && pageController.offset < pageSize * 4;
            bool isScrollUp = pointerSignal.scrollDelta.dy < 0;
            bool isScrollDown = pointerSignal.scrollDelta.dy > 0;

            if (isPage1) {
              if (isScrollDown) {
                pageScrollVerticallyLimitMax(pointerSignal, pageSize * 1);
              } else {
                pageScrollVertically(pointerSignal);
              }
            } else if (isPage2) {
              // 스크롤 내릴 때 가로 스크롤이 맨 오른쪽이 아닌 경우
              if (isScrollDown && scrollController.offset < scrollController.position.maxScrollExtent) {
                scrollHorizontally(scrollController, pointerSignal);
                return;
              }

              // 스크롤 올릴 때 가로 스크롤이 맨 왼쪽이 아닌 경우
              if (isScrollUp && scrollController.offset > scrollController.position.minScrollExtent && pageController.offset == pageSize) {
                scrollHorizontally(scrollController, pointerSignal);
                return;
              }

              if (isScrollDown) {
                pageScrollVerticallyLimitMax(pointerSignal, pageSize * 2);
              } else {
                if (scrollController.offset == scrollController.position.minScrollExtent) {
                  pageScrollVertically(pointerSignal);
                } else {
                  pageScrollVerticallyLimitMin(pointerSignal, pageSize * 1);
                }
              }
            } else if (isPage3) {
              // 스크롤 내릴 때 가로 스크롤이 맨 오른쪽이 아닌 경우
              if (isScrollDown && scrollController2.offset < scrollController2.position.maxScrollExtent) {
                scrollHorizontally(scrollController2, pointerSignal);
                return;
              }

              // 스크롤 올릴 때 가로 스크롤이 맨 왼쪽이 아닌 경우
              if (isScrollUp &&
                  scrollController2.offset > scrollController2.position.minScrollExtent &&
                  pageController.offset == pageSize * 2) {
                scrollHorizontally(scrollController2, pointerSignal);
                return;
              }

              if (isScrollDown) {
                pageScrollVerticallyLimitMax(pointerSignal, pageSize * 3);
              } else {
                if (scrollController2.offset == scrollController2.position.minScrollExtent) {
                  pageScrollVertically(pointerSignal);
                } else {
                  pageScrollVerticallyLimitMin(pointerSignal, pageSize * 2);
                }
              }
            } else if (isPage4) {
              if (isScrollDown) {
                pageScrollVerticallyLimitMax(pointerSignal, pageSize * 4);
              } else {
                pageScrollVertically(pointerSignal);
              }
            } else {
              pageScrollVertically(pointerSignal);
            }
          }
        },
        child: Stack(
          children: [
            ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
              child: SingleChildScrollView(
                controller: pageController,
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                child: Column(
                  children: [
                    // Page 1
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.green[100],
                      child: const Center(
                        child: Text('Page 1'),
                      ),
                    ),
                    // Page 2
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.blue[100],
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  '제목입니다.',
                                  style: TextStyle(fontSize: 100),
                                ),
                                SizedBox(
                                  height: 32,
                                ),
                                Text(
                                  '내용입니다.1\n내용입니다.2\n내용입니다.3',
                                  style: TextStyle(fontSize: 30),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 32,
                            ),
                            SizedBox(
                              height: 500,
                              width: 750,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                controller: scrollController,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return Container(
                                    width: 500,
                                    margin: const EdgeInsets.all(8.0),
                                    color: Colors.blue[300],
                                    child: Center(child: Text('Item $index')),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Page 3
                    Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height,
                        color: Colors.red[100],
                        child: Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    '제목입니다.',
                                    style: TextStyle(fontSize: 100),
                                  ),
                                  SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    '내용입니다.1\n내용입니다.2\n내용입니다.3',
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 32,
                              ),
                              SizedBox(
                                height: 500,
                                width: 750,
                                child: ListView.builder(
                                  controller: scrollController2,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: 10,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      width: 500,
                                      height: 500,
                                      margin: const EdgeInsets.all(8.0),
                                      color: Colors.blue[300],
                                      child: Center(child: Text('Item $index')),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        )),
                    // Page 4
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.blue[100],
                      child: const Center(
                        child: Text('Page 4'),
                      ),
                    ),
                    // Page 5
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.purple[100],
                      child: const Center(
                        child: Text('Page 5'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Scrollbar(
              controller: mainController,
              thumbVisibility: true,
              trackVisibility: true,
              child: SingleChildScrollView(
                controller: mainController,
                child: SizedBox(
                  width: double.infinity,
                  height: scrollSize,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 페이지 스크롤을 움직입니다.
  void pageScrollVertically(PointerScrollEvent pointerSignal) {
    double offset = pageController.offset + pointerSignal.scrollDelta.dy;
    if (offset < pageController.position.minScrollExtent) {
      offset = pageController.position.minScrollExtent;
    }
    if (offset > pageController.position.maxScrollExtent) {
      offset = pageController.position.maxScrollExtent;
    }
    pageController.jumpTo(offset);
  }

  /// 페이지 스크롤 상단을 제한합니다.
  void pageScrollVerticallyLimitMin(PointerScrollEvent pointerSignal, double minOffset) {
    double offset = pageController.offset + pointerSignal.scrollDelta.dy;
    if (offset < minOffset) {
      offset = minOffset;
    }
    pageController.jumpTo(offset);
  }

  /// 페이지 스크롤 하단을 제한합니다.
  void pageScrollVerticallyLimitMax(PointerScrollEvent pointerSignal, double maxOffset) {
    double offset = pageController.offset + pointerSignal.scrollDelta.dy;
    if (offset > maxOffset) {
      offset = maxOffset;
    }
    pageController.jumpTo(offset);
  }

  /// 가로 스크롤을 움직입니다.
  void scrollHorizontally(ScrollController scrollController, PointerScrollEvent pointerSignal) {
    double offset = scrollController.offset + pointerSignal.scrollDelta.dy;
    if (offset < 0) {
      offset = 0;
    }
    if (offset > scrollController.position.maxScrollExtent) {
      offset = scrollController.position.maxScrollExtent;
    }
    scrollController.jumpTo(offset);
  }
}
