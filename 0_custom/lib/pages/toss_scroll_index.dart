// ignore_for_file: unused_local_variable

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TossScrollIndexPage extends StatefulWidget {
  const TossScrollIndexPage({super.key});

  @override
  State<TossScrollIndexPage> createState() => _TossScrollIndexPageState();
}

class _TossScrollIndexPageState extends State<TossScrollIndexPage> {
  // 스크롤바 컨트롤러
  ScrollController scrollbarController = ScrollController();

  // 페이지 컨트롤러
  PageController pageController = PageController();

  // 페이지 단계별 사이즈

  // index : 0
  int page0Size = 1;
  // index : 0 ~ 7
  int page1Size = 26;
  // index : 0 ~ 14
  int page2Size = 26;
  // index : 0 ~ 25
  int page3Size = 26;
  // index : 0 ~ 4
  int page4Size = 5;

  /// 페이지 리스트
  late List<int> pageList;

  /// 현재 전역 인덱스
  int currentIndex = 0;

  /// 현재 페이지
  int get currentPage {
    int page = 0;
    for (int i = 0; i < pageList.length; i++) {
      if (currentIndex < pageList[i]) {
        page = i;
        break;
      }
    }
    return page;
  }

  /// 현재 페이지 인덱스
  int get currentPageIndex {
    if (currentPage == 0) {
      return currentIndex;
    }
    return currentIndex - pageList[currentPage - 1];
  }

  /// 최소 페이지 인덱스
  int minIndex = 0;

  /// 최대 페이지 인덱스
  late int maxIndex;

  /// 스크롤 여부
  bool isScroll = false;

  // ------------------------------------------------------------

  double page1TitleOpacity = 0.0;
  double page1TitleSize = 30;
  double page1SubTitleOpacity = 0.0;
  double page1SubTitleSize = 20;
  PageController page1Controller = PageController();

  double page2TitleOpacity = 0.0;
  double page2TitleSize = 30;
  double page2SubTitleOpacity = 0.0;
  double page2SubTitleSize = 20;
  PageController page2Controller = PageController();

  double page3TitleOpacity = 0.0;
  double page3TitleSize = 30;
  double page3SubTitleOpacity = 0.0;
  double page3SubTitleSize = 20;
  PageController page3Controller = PageController();

  @override
  void initState() {
    super.initState();
    // 페이지 리스트 생성
    pageList = [page0Size];
    pageList.add(pageList.last + page1Size);
    pageList.add(pageList.last + page2Size);
    pageList.add(pageList.last + page3Size);
    pageList.add(pageList.last + page4Size);

    // 최대 페이지 인덱스 설정
    maxIndex = pageList.last;
  }

  @override
  Widget build(BuildContext context) {
    print('index(page) : $currentPageIndex($currentPage)');
    return Scaffold(
      body: Listener(
        onPointerSignal: (pointerSignal) async {
          if (pointerSignal is PointerScrollEvent && !isScroll) {
            // 스크롤 중복 방지
            isScroll = true;

            // 스크롤 방향 확인
            bool isScrollUp = pointerSignal.scrollDelta.dy < 0;

            if (isScrollUp) {
              if (currentIndex > minIndex) {
                print('up');
                // 페이지 감소
                currentIndex--;
                // 페이지 스크로바 위치 이동
                scrollbarController.jumpTo((currentIndex) * MediaQuery.of(context).size.height);
                // 직전 페이지가 새로운 페이지 인지 확인
                bool isContain = pageList.contains(currentIndex + 1);
                if (isContain) {
                  // 이전 페이지로 이동
                  await pageController.previousPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
                }
              }
            } else {
              if (currentIndex < maxIndex - 1) {
                print('down');
                // 페이지 증가
                currentIndex++;
                // 페이지 스크로바 위치 이동
                scrollbarController.jumpTo((currentIndex) * MediaQuery.of(context).size.height);
                // 다음 페이지가 포함되어 있는지 확인
                bool isContain = pageList.contains(currentIndex);
                if (isContain) {
                  // 다음 페이지로 이동
                  await pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
                }
              }
            }

            await updateDataSet();

            // 리빌드
            setState(() {});

            // 스크롤 중복 방지 해제
            isScroll = false;
          }
        },
        child: Stack(
          children: [
            PageView(
              controller: pageController,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              children: [
                KeepAlivePage(
                  child: Container(
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        '0.안녕하세요$currentIndex',
                        style: TextStyle(fontSize: currentIndex.toDouble()),
                      ),
                    ),
                  ),
                ),
                KeepAlivePage(
                  child: Container(
                    color: Colors.blue,
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 500,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Opacity(
                                  opacity: page1TitleOpacity,
                                  child: Text(
                                    '출발은 작은 불편을\n해결하는 것부터111',
                                    style: TextStyle(
                                      fontSize: page1TitleSize,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 32),
                                Opacity(
                                  opacity: page1SubTitleOpacity,
                                  child: Text(
                                    '금융생활에 당연한 불편은 없어요. 토스 하나면 언제 어디서든 송금 10초컷 가능. 복잡했던 보험료 돌려받기, 시간에 쫓겨 관공서를 찾아야 했던 증명서 발급도 앉은 자리에서 오케이. 자유로운 금융은 우리의 시간과 공간을 더 여유롭게 해요.',
                                    style: TextStyle(fontSize: page1SubTitleSize),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 100),
                          SizedBox(
                            width: 750,
                            child: ListView.builder(
                              controller: page1Controller,
                              physics: const ClampingScrollPhysics(),
                              itemCount: 5,
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
                ),
                KeepAlivePage(
                  child: Container(
                    color: Colors.green,
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 500,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Opacity(
                                  opacity: page2TitleOpacity,
                                  child: Text(
                                    '출발은 작은 불편을\n해결하는 것부터222',
                                    style: TextStyle(
                                      fontSize: page2TitleSize,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 32),
                                Opacity(
                                  opacity: page2SubTitleOpacity,
                                  child: Text(
                                    '금융생활에 당연한 불편은 없어요. 토스 하나면 언제 어디서든 송금 10초컷 가능. 복잡했던 보험료 돌려받기, 시간에 쫓겨 관공서를 찾아야 했던 증명서 발급도 앉은 자리에서 오케이. 자유로운 금융은 우리의 시간과 공간을 더 여유롭게 해요.',
                                    style: TextStyle(fontSize: page2SubTitleSize),
                                  ),
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
                              controller: page2Controller,
                              physics: const ClampingScrollPhysics(),
                              itemCount: 5,
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
                ),
                KeepAlivePage(
                  child: Container(
                    color: Colors.brown,
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 500,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Opacity(
                                  opacity: page3TitleOpacity,
                                  child: Text(
                                    '출발은 작은 불편을\n해결하는 것부터333',
                                    style: TextStyle(
                                      fontSize: page3TitleSize,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 32),
                                Opacity(
                                  opacity: page3SubTitleOpacity,
                                  child: Text(
                                    '금융생활에 당연한 불편은 없어요. 토스 하나면 언제 어디서든 송금 10초컷 가능. 복잡했던 보험료 돌려받기, 시간에 쫓겨 관공서를 찾아야 했던 증명서 발급도 앉은 자리에서 오케이. 자유로운 금융은 우리의 시간과 공간을 더 여유롭게 해요.',
                                    style: TextStyle(fontSize: page3SubTitleSize),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 100),
                          SizedBox(
                            width: 750,
                            child: ListView.builder(
                              controller: page3Controller,
                              physics: const ClampingScrollPhysics(),
                              itemCount: 5,
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
                ),
                KeepAlivePage(
                  child: Container(
                    color: Colors.purple,
                    child: Center(
                      child: Text(
                        '4.안녕하세요$currentIndex',
                        style: TextStyle(fontSize: currentIndex.toDouble()),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Scrollbar(
              controller: scrollbarController,
              thumbVisibility: true,
              trackVisibility: true,
              child: SingleChildScrollView(
                controller: scrollbarController,
                physics: const NeverScrollableScrollPhysics(),
                child: SizedBox(width: double.infinity, height: maxIndex * MediaQuery.of(context).size.height),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> updateDataSet() async {
    // 페이지 0일 때
    if (currentPage == 0) {}

    // 페이지 1일 때
    if (currentPage == 1) {
      if (currentPageIndex == 0) {
        page1TitleOpacity = 0.0;
        page1TitleSize = 30;
      } else if (currentPageIndex == 1) {
        page1TitleOpacity = 0.1;
        page1TitleSize = 31;
      } else if (currentPageIndex == 2) {
        page1TitleOpacity = 0.2;
        page1TitleSize = 32;
      } else if (currentPageIndex == 3) {
        page1TitleOpacity = 0.3;
        page1TitleSize = 33;
      } else if (currentPageIndex == 4) {
        page1TitleOpacity = 0.4;
        page1TitleSize = 34;
      } else if (currentPageIndex == 5) {
        page1TitleOpacity = 0.5;
        page1TitleSize = 35;
      } else if (currentPageIndex == 5) {
        page1TitleOpacity = 0.5;
        page1TitleSize = 35;
      } else if (currentPageIndex == 6) {
        page1TitleOpacity = 0.6;
        page1TitleSize = 36;
      } else if (currentPageIndex == 7) {
        page1TitleOpacity = 0.7;
        page1TitleSize = 37;
      } else if (currentPageIndex == 8) {
        page1TitleOpacity = 0.8;
        page1TitleSize = 38;
      } else if (currentPageIndex == 9) {
        page1TitleOpacity = 0.9;
        page1TitleSize = 39;
      } else if (currentPageIndex == 10) {
        page1TitleOpacity = 1;
        page1TitleSize = 40;
        page1SubTitleOpacity = 0.0;
        page1SubTitleSize = 20;
      } else if (currentPageIndex == 11) {
        page1SubTitleOpacity = 0.1;
        page1SubTitleSize = 21;
      } else if (currentPageIndex == 12) {
        page1SubTitleOpacity = 0.2;
        page1SubTitleSize = 22;
      } else if (currentPageIndex == 13) {
        page1SubTitleOpacity = 0.3;
        page1SubTitleSize = 23;
      } else if (currentPageIndex == 14) {
        page1SubTitleOpacity = 0.4;
        page1SubTitleSize = 24;
      } else if (currentPageIndex == 15) {
        page1SubTitleOpacity = 0.5;
        page1SubTitleSize = 25;
      } else if (currentPageIndex == 16) {
        page1SubTitleOpacity = 0.6;
        page1SubTitleSize = 26;
      } else if (currentPageIndex == 17) {
        page1SubTitleOpacity = 0.7;
        page1SubTitleSize = 27;
      } else if (currentPageIndex == 18) {
        page1SubTitleOpacity = 0.8;
        page1SubTitleSize = 28;
      } else if (currentPageIndex == 19) {
        page1SubTitleOpacity = 0.9;
        page1SubTitleSize = 29;
      } else if (currentPageIndex == 20) {
        page1SubTitleOpacity = 1;
        page1SubTitleSize = 30;
      } else if (currentPageIndex == 21) {
        await page1Controller.animateToPage(0, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      } else if (currentPageIndex == 22) {
        await page1Controller.animateToPage(1, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      } else if (currentPageIndex == 23) {
        await page1Controller.animateToPage(2, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      } else if (currentPageIndex == 24) {
        await page1Controller.animateToPage(3, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      } else if (currentPageIndex == 25) {
        await page1Controller.animateToPage(4, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      }
    }

    // 페이지 2일 때
    if (currentPage == 2) {
      if (currentPageIndex == 0) {
        page2TitleOpacity = 0.0;
        page2TitleSize = 30;
      } else if (currentPageIndex == 1) {
        page2TitleOpacity = 0.1;
        page2TitleSize = 31;
      } else if (currentPageIndex == 2) {
        page2TitleOpacity = 0.2;
        page2TitleSize = 32;
      } else if (currentPageIndex == 3) {
        page2TitleOpacity = 0.3;
        page2TitleSize = 33;
      } else if (currentPageIndex == 4) {
        page2TitleOpacity = 0.4;
        page2TitleSize = 34;
      } else if (currentPageIndex == 5) {
        page2TitleOpacity = 0.5;
        page2TitleSize = 35;
      } else if (currentPageIndex == 5) {
        page2TitleOpacity = 0.5;
        page2TitleSize = 35;
      } else if (currentPageIndex == 6) {
        page2TitleOpacity = 0.6;
        page2TitleSize = 36;
      } else if (currentPageIndex == 7) {
        page2TitleOpacity = 0.7;
        page2TitleSize = 37;
      } else if (currentPageIndex == 8) {
        page2TitleOpacity = 0.8;
        page2TitleSize = 38;
      } else if (currentPageIndex == 9) {
        page2TitleOpacity = 0.9;
        page2TitleSize = 39;
      } else if (currentPageIndex == 10) {
        page2TitleOpacity = 1;
        page2TitleSize = 40;
        page2SubTitleOpacity = 0.0;
        page2SubTitleSize = 20;
      } else if (currentPageIndex == 11) {
        page2SubTitleOpacity = 0.1;
        page2SubTitleSize = 21;
      } else if (currentPageIndex == 12) {
        page2SubTitleOpacity = 0.2;
        page2SubTitleSize = 22;
      } else if (currentPageIndex == 13) {
        page2SubTitleOpacity = 0.3;
        page2SubTitleSize = 23;
      } else if (currentPageIndex == 14) {
        page2SubTitleOpacity = 0.4;
        page2SubTitleSize = 24;
      } else if (currentPageIndex == 15) {
        page2SubTitleOpacity = 0.5;
        page2SubTitleSize = 25;
      } else if (currentPageIndex == 16) {
        page2SubTitleOpacity = 0.6;
        page2SubTitleSize = 26;
      } else if (currentPageIndex == 17) {
        page2SubTitleOpacity = 0.7;
        page2SubTitleSize = 27;
      } else if (currentPageIndex == 18) {
        page2SubTitleOpacity = 0.8;
        page2SubTitleSize = 28;
      } else if (currentPageIndex == 19) {
        page2SubTitleOpacity = 0.9;
        page2SubTitleSize = 29;
      } else if (currentPageIndex == 20) {
        page2SubTitleOpacity = 1;
        page2SubTitleSize = 30;
      } else if (currentPageIndex == 21) {
        await page2Controller.animateToPage(0, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      } else if (currentPageIndex == 22) {
        await page2Controller.animateToPage(1, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      } else if (currentPageIndex == 23) {
        await page2Controller.animateToPage(2, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      } else if (currentPageIndex == 24) {
        await page2Controller.animateToPage(3, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      } else if (currentPageIndex == 25) {
        await page2Controller.animateToPage(4, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      }
    }

    // 페이지 3일 때
    if (currentPage == 3) {
      if (currentPageIndex == 0) {
        page3TitleOpacity = 0.0;
        page3TitleSize = 30;
      } else if (currentPageIndex == 1) {
        page3TitleOpacity = 0.1;
        page3TitleSize = 31;
      } else if (currentPageIndex == 2) {
        page3TitleOpacity = 0.2;
        page3TitleSize = 32;
      } else if (currentPageIndex == 3) {
        page3TitleOpacity = 0.3;
        page3TitleSize = 33;
      } else if (currentPageIndex == 4) {
        page3TitleOpacity = 0.4;
        page3TitleSize = 34;
      } else if (currentPageIndex == 5) {
        page3TitleOpacity = 0.5;
        page3TitleSize = 35;
      } else if (currentPageIndex == 5) {
        page3TitleOpacity = 0.5;
        page3TitleSize = 35;
      } else if (currentPageIndex == 6) {
        page3TitleOpacity = 0.6;
        page3TitleSize = 36;
      } else if (currentPageIndex == 7) {
        page3TitleOpacity = 0.7;
        page3TitleSize = 37;
      } else if (currentPageIndex == 8) {
        page3TitleOpacity = 0.8;
        page3TitleSize = 38;
      } else if (currentPageIndex == 9) {
        page3TitleOpacity = 0.9;
        page3TitleSize = 39;
      } else if (currentPageIndex == 10) {
        page3TitleOpacity = 1;
        page3TitleSize = 40;
        page3SubTitleOpacity = 0.0;
        page3SubTitleSize = 20;
      } else if (currentPageIndex == 11) {
        page3SubTitleOpacity = 0.1;
        page3SubTitleSize = 21;
      } else if (currentPageIndex == 12) {
        page3SubTitleOpacity = 0.2;
        page3SubTitleSize = 22;
      } else if (currentPageIndex == 13) {
        page3SubTitleOpacity = 0.3;
        page3SubTitleSize = 23;
      } else if (currentPageIndex == 14) {
        page3SubTitleOpacity = 0.4;
        page3SubTitleSize = 24;
      } else if (currentPageIndex == 15) {
        page3SubTitleOpacity = 0.5;
        page3SubTitleSize = 25;
      } else if (currentPageIndex == 16) {
        page3SubTitleOpacity = 0.6;
        page3SubTitleSize = 26;
      } else if (currentPageIndex == 17) {
        page3SubTitleOpacity = 0.7;
        page3SubTitleSize = 27;
      } else if (currentPageIndex == 18) {
        page3SubTitleOpacity = 0.8;
        page3SubTitleSize = 28;
      } else if (currentPageIndex == 19) {
        page3SubTitleOpacity = 0.9;
        page3SubTitleSize = 29;
      } else if (currentPageIndex == 20) {
        page3SubTitleOpacity = 1;
        page3SubTitleSize = 30;
      } else if (currentPageIndex == 21) {
        await page3Controller.animateToPage(0, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      } else if (currentPageIndex == 22) {
        await page3Controller.animateToPage(1, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      } else if (currentPageIndex == 23) {
        await page3Controller.animateToPage(2, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      } else if (currentPageIndex == 24) {
        await page3Controller.animateToPage(3, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      } else if (currentPageIndex == 25) {
        await page3Controller.animateToPage(4, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      }
    }

    // 페이지 4일 때
    if (currentPage == 4) {}
  }
}

class KeepAlivePage extends StatefulWidget {
  final Widget child;
  const KeepAlivePage({
    super.key,
    required this.child,
  });

  @override
  KeepAlivePageState createState() => KeepAlivePageState();
}

class KeepAlivePageState extends State<KeepAlivePage> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }

  @override
  bool get wantKeepAlive => true;
}
