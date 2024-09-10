import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ScrollAnimationPage extends StatefulWidget {
  const ScrollAnimationPage({super.key});

  @override
  ScrollAnimationPageState createState() => ScrollAnimationPageState();
}

class ScrollAnimationPageState extends State<ScrollAnimationPage> {
  final List<bool> _isVisible = List.generate(5, (index) => false); // 각 위젯의 보임 여부 저장

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scroll Animation Example'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 600,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  '스크롤을 아래로 내리세요!',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
            for (int i = 0; i < 5; i++)
              VisibilityDetector(
                key: Key('$i'),
                onVisibilityChanged: (VisibilityInfo info) {
                  if (info.visibleFraction >= 0.5) {
                    // 일정 부분이 보일 때만 true로 변경
                    print(info.visibleFraction);
                    setState(() {
                      _isVisible[i] = true;
                    });
                  } else {
                    setState(() {
                      _isVisible[i] = false;
                    });
                  }
                },
                child: AnimatedOpacity(
                  opacity: _isVisible[i] ? 1.0 : 0.0,
                  duration: const Duration(seconds: 1),
                  child: Container(
                    height: 300,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        '애니메이션이 나타났습니다! ${i + 1}',
                        style: const TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            Container(
              height: 600,
              color: Colors.green,
              child: const Center(
                child: Text(
                  '다른 컨텐츠',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
