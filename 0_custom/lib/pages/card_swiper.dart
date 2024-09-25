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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.swipeUp();
        },
        child: const Icon(Icons.abc),
      ),
      body: Center(
        child: SizedBox(
          width: 500,
          height: 500,
          child: AppinioSwiper(
            controller: controller,
            cardCount: 10,
            backgroundCardCount: 2,
            allowUnSwipe: false,
            backgroundCardScale: 0.98,
            onSwipeEnd: (previousIndex, targetIndex, activity) {
              print('previousIndex: $previousIndex, targetIndex: $targetIndex, activity: $activity');
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
