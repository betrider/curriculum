import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedWidgetExample extends StatefulWidget {
  const AnimatedWidgetExample({super.key});

  @override
  State<AnimatedWidgetExample> createState() => _AnimatedWidgetExampleState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _AnimatedWidgetExampleState extends State<AnimatedWidgetExample> with TickerProviderStateMixin {
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
    return AnimatedWidgetExample2(controller: _controller);
  }
}

class AnimatedWidgetExample2 extends AnimatedWidget {
  const AnimatedWidgetExample2({
    super.key,
    required AnimationController controller,
  }) : super(listenable: controller);

  Animation<double> get _progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedWidgetExample'),
        centerTitle: true,
      ),
      body: Transform.rotate(
        angle: _progress.value * 2.0 * pi,
        child: Container(width: 200.0, height: 200.0, color: Colors.green),
      ),
    );
  }
}
