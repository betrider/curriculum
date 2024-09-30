import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CarouselPage extends StatelessWidget {
  static const routeName = 'carousel';
  const CarouselPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CarouselPage'),
      ),
      body: Center(
        child: SizedBox(
          height: 400,
          child: Swiper(
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Image.network(
                "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
                fit: BoxFit.fill,
              );
            },
            pagination: const SwiperPagination(),
            control: const SwiperControl(),
            // 자동 슬라이드 여부
            autoplay: true,
            // 자동 슬라이드 시간
            autoplayDelay: 3000,
            // viewportFraction: 0.8,
            // scale: 0.9,
          ),
        ),
      ),
    );
  }
}
