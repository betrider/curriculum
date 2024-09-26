import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardSwiperPage extends StatefulWidget {
  const CardSwiperPage({super.key});

  @override
  State<CardSwiperPage> createState() => _CardSwiperPageState();
}

class _CardSwiperPageState extends State<CardSwiperPage> {
  AppinioSwiperController controller = AppinioSwiperController();

  bool isSwiping = false;
  int cardCount = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              heroTag: '1',
              onPressed: () {
                if (isSwiping) return;
                if (controller.cardIndex == 0) return;

                isSwiping = true;
                controller.unswipe();
              },
              child: const Icon(Icons.remove),
            ),
            const SizedBox(width: 16),
            FloatingActionButton(
              heroTag: '2',
              onPressed: () {
                if (isSwiping) return;
                if (controller.cardIndex == (cardCount - 1)) return;

                isSwiping = true;
                controller.swipeRight();
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 500,
          height: 500,
          child: AppinioSwiper(
            // 카드 넘어가는 애니메이션 시간
            duration: const Duration(milliseconds: 500),
            // 컨트롤러
            controller: controller,
            // 카드 갯수
            cardCount: cardCount,
            // 직접 스와이프 할 수 있는지
            isDisabled: true,
            // 배경 카드 개수
            backgroundCardCount: 2,
            // 배경 카드 사이즈 비율
            backgroundCardScale: 0.98,
            // 카드 넘어 갈 때 회전 각도
            maxAngle: 50,
            // 빌더
            onSwipeEnd: (previousIndex, targetIndex, activity) {
              print('previousIndex: $previousIndex, targetIndex: $targetIndex, activity: $activity');
              isSwiping = false;
            },
            cardBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 4,
                child: Container(
                  alignment: Alignment.center,
                  color: CupertinoColors.activeBlue,
                  child: Text(index.toString()),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
