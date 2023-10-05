import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedWidgetExample extends AnimatedWidget {
  const AnimatedWidgetExample({
    super.key,
    required AnimationController controller,
  }) : super(listenable: controller);

  Animation<double> get _progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedWidgetExample')),
      body: Transform.rotate(
        angle: _progress.value * 2.0 * pi,
        child: Container(width: 200.0, height: 200.0, color: Colors.green),
      ),
    );
  }
}

class AnimatedWidgetExample2 extends StatefulWidget {
  const AnimatedWidgetExample2({super.key});

  @override
  State<AnimatedWidgetExample2> createState() => _AnimatedWidgetExample2State();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _AnimatedWidgetExample2State extends State<AnimatedWidgetExample2> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedWidgetExample(controller: _controller);
  }
}
