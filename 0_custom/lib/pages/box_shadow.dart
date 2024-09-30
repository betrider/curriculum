import 'package:flutter/material.dart';

class BoxShadowPage extends StatelessWidget {
  static const routeName = 'box-shadow';
  const BoxShadowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.black,
                boxShadow: [
                  BoxShadow(
                    // 상자 색상
                    color: Colors.black.withOpacity(0.5),
                    // 상자 추가 크기
                    spreadRadius: 10,
                    // 상자 위치
                    offset: const Offset(0, 0),
                    // 흐림 정도
                    blurRadius: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 32),
            Container(
              width: 250,
              height: 250,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
