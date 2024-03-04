import 'dart:math';

import 'package:flutter/material.dart';

/// 참고 url : https://wilsonwilson.dev/articles/custom-implicit-animations
///
/// 해당 속성의 변경 사항을 애니메이션으로 보여주는 위젯을 구축하기 위한 추상 클래스입니다.
class ImplicitlyAnimatedWidgetExample extends StatefulWidget {
  const ImplicitlyAnimatedWidgetExample({super.key});

  @override
  ImplicitlyAnimatedWidgetExampleState createState() => ImplicitlyAnimatedWidgetExampleState();
}

class ImplicitlyAnimatedWidgetExampleState extends State<ImplicitlyAnimatedWidgetExample> {
  double rotation = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: rotate,
        child: const Icon(Icons.rotate_right),
      ),
      backgroundColor: const Color.fromRGBO(10, 10, 17, 1),
      body: Center(
        child: AnimatedRotation(
          duration: const Duration(milliseconds: 2000),
          curve: Curves.ease,
          rotation: rotation,
          child: Image.network(
            'https://miro.medium.com/max/664/1*Xm96KtLeIAAMtAYWcr1-MA.png',
            scale: 2,
          ),
        ),
      ),
    );
  }

  void rotate() => setState(() => rotation = rotation += pi * 4);
}

class AnimatedRotation extends ImplicitlyAnimatedWidget {
  final double rotation;
  final Widget child;
  const AnimatedRotation({
    super.key,
    required this.rotation,
    required super.duration,
    required super.curve,
    required this.child,
  });
  @override
  AnimatedRotationState createState() => AnimatedRotationState();
}

class AnimatedRotationState extends AnimatedWidgetBaseState<AnimatedRotation> {
  @override
  void forEachTween(visitor) {}
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: widget.rotation,
      child: widget.child,
    );
  }
}
