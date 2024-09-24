import 'package:after_layout/after_layout.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class TossScrollPage extends StatefulWidget {
  const TossScrollPage({super.key});

  @override
  TossScrollPageState createState() => TossScrollPageState();
}

class TossScrollPageState extends State<TossScrollPage>
    with AfterLayoutMixin<TossScrollPage> {
  ScrollController mainController = ScrollController();
  ScrollController pageController = ScrollController();
  ScrollController scrollController = ScrollController();
  ScrollController scrollController2 = ScrollController();
  ScrollController scrollController3 = ScrollController();

  late double scrollSize = MediaQuery.of(context).size.height;

  bool isLayoutBuild = false;

  @override
  void afterFirstLayout(BuildContext context) {
    setState(() {
      scrollSize = pageController.position.maxScrollExtent +
          scrollController.position.maxScrollExtent +
          scrollController2.position.maxScrollExtent +
          scrollController3.position.maxScrollExtent;

      scrollSize += MediaQuery.of(context).size.height + 72 + 72 + 72;
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
    scrollController3.dispose();
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

            bool isPage1 = pageController.offset >= 0 &&
                pageController.offset < pageSize * 1;
            bool isPage2 = pageController.offset >= pageSize * 1 &&
                pageController.offset < pageSize * 2;
            bool isPage3 = pageController.offset >= pageSize * 2 &&
                pageController.offset < pageSize * 3;
            bool isPage4 = pageController.offset >= pageSize * 3 &&
                pageController.offset < pageSize * 4;
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
              if (isScrollDown &&
                  scrollController.offset <
                      scrollController.position.maxScrollExtent) {
                scrollHorizontally(scrollController, pointerSignal);
                return;
              }

              // 스크롤 올릴 때 가로 스크롤이 맨 왼쪽이 아닌 경우
              if (isScrollUp &&
                  scrollController.offset >
                      scrollController.position.minScrollExtent &&
                  pageController.offset == pageSize) {
                scrollHorizontally(scrollController, pointerSignal);
                return;
              }

              if (isScrollDown) {
                pageScrollVerticallyLimitMax(pointerSignal, pageSize * 2);
              } else {
                if (scrollController.offset ==
                    scrollController.position.minScrollExtent) {
                  pageScrollVertically(pointerSignal);
                } else {
                  pageScrollVerticallyLimitMin(pointerSignal, pageSize * 1);
                }
              }
            } else if (isPage3) {
              // 스크롤 내릴 때 가로 스크롤이 맨 오른쪽이 아닌 경우
              if (isScrollDown &&
                  scrollController2.offset <
                      scrollController2.position.maxScrollExtent) {
                scrollHorizontally(scrollController2, pointerSignal);
                return;
              }

              // 스크롤 올릴 때 가로 스크롤이 맨 왼쪽이 아닌 경우
              if (isScrollUp &&
                  scrollController2.offset >
                      scrollController2.position.minScrollExtent &&
                  pageController.offset == pageSize * 2) {
                scrollHorizontally(scrollController2, pointerSignal);
                return;
              }

              if (isScrollDown) {
                pageScrollVerticallyLimitMax(pointerSignal, pageSize * 3);
              } else {
                if (scrollController2.offset ==
                    scrollController2.position.minScrollExtent) {
                  pageScrollVertically(pointerSignal);
                } else {
                  pageScrollVerticallyLimitMin(pointerSignal, pageSize * 2);
                }
              }
            } else if (isPage4) {
              // 스크롤 내릴 때 가로 스크롤이 맨 오른쪽이 아닌 경우
              if (isScrollDown &&
                  scrollController3.offset <
                      scrollController3.position.maxScrollExtent) {
                scrollHorizontally(scrollController3, pointerSignal);
                return;
              }

              // 스크롤 올릴 때 가로 스크롤이 맨 왼쪽이 아닌 경우
              if (isScrollUp &&
                  scrollController3.offset >
                      scrollController3.position.minScrollExtent &&
                  pageController.offset == pageSize * 3) {
                scrollHorizontally(scrollController3, pointerSignal);
                return;
              }

              if (isScrollDown) {
                pageScrollVerticallyLimitMax(pointerSignal, pageSize * 4);
              } else {
                if (scrollController3.offset ==
                    scrollController3.position.minScrollExtent) {
                  pageScrollVertically(pointerSignal);
                } else {
                  pageScrollVerticallyLimitMin(pointerSignal, pageSize * 3);
                }
              }
            } else {
              pageScrollVertically(pointerSignal);
            }
          }
        },
        child: Stack(
          children: [
            ScrollConfiguration(
              behavior:
                  ScrollConfiguration.of(context).copyWith(scrollbars: false),
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
                            const SizedBox(
                              width: 500,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    '출발은 작은 불편을\n해결하는 것부터',
                                    style: TextStyle(fontSize: 60),
                                  ),
                                  SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    '금융생활에 당연한 불편은 없어요. 토스 하나면 언제 어디서든 송금 10초컷 가능. 복잡했던 보험료 돌려받기, 시간에 쫓겨 관공서를 찾아야 했던 증명서 발급도 앉은 자리에서 오케이. 자유로운 금융은 우리의 시간과 공간을 더 여유롭게 해요.',
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 100),
                            SizedBox(
                              width: 750,
                              child: ListView.builder(
                                controller: scrollController,
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
                              const SizedBox(
                                width: 500,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      '누구에게나 쉬운,\n다정한 금융',
                                      style: TextStyle(fontSize: 60),
                                    ),
                                    SizedBox(
                                      height: 32,
                                    ),
                                    Text(
                                      '초등학생도 처음으로 내 이름 새겨진 카드를 만들고, 새로운 앱 사용이 어렵던 부모님도 손쉽게 스마트 금융에 스며들어요. 평범한 일상이 쉽지 않던 사람들도 스스로 접근 가능한, 다정한 금융이야말로 모두의 삶을 바꿀 수 있어요.',
                                      style: TextStyle(fontSize: 30),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 100),
                              SizedBox(
                                width: 750,
                                height: 500,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  controller: scrollController2,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: 10,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      width: 500,
                                      height: 500,
                                      margin: const EdgeInsets.all(8.0),
                                      color: Colors.red[300],
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
                      color: Colors.green[100],
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(
                              width: 500,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    '나의 안전하고\n또 안전한,\n금융 슈퍼앱',
                                    style: TextStyle(fontSize: 60),
                                  ),
                                  SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    '사용자가 불안하기 전에 먼저 움직여요. 송금 전 사기계좌 알림, 사기계좌와 전화번호 조회, 악성앱 감지 알림 등 평화로운 삶을 위협하는 부정 거래는 초미세 안전망을 빠져나가지 못해요. 비상 시를 대비해 365일 24시간 열려 있는 고객센터까지, 등 뒤는 토스가 지켜요.',
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 100),
                            SizedBox(
                              width: 750,
                              child: ListView.builder(
                                controller: scrollController3,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return Container(
                                    width: 500,
                                    height: 500,
                                    margin: const EdgeInsets.all(8.0),
                                    color: Colors.green[300],
                                    child: Center(child: Text('Item $index')),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
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
  void pageScrollVerticallyLimitMin(
      PointerScrollEvent pointerSignal, double minOffset) {
    double offset = pageController.offset + pointerSignal.scrollDelta.dy;
    if (offset < minOffset) {
      offset = minOffset;
    }
    pageController.jumpTo(offset);
  }

  /// 페이지 스크롤 하단을 제한합니다.
  void pageScrollVerticallyLimitMax(
      PointerScrollEvent pointerSignal, double maxOffset) {
    double offset = pageController.offset + pointerSignal.scrollDelta.dy;
    if (offset > maxOffset) {
      offset = maxOffset;
    }
    pageController.jumpTo(offset);
  }

  /// 가로 스크롤을 움직입니다.
  void scrollHorizontally(
      ScrollController scrollController, PointerScrollEvent pointerSignal) {
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
