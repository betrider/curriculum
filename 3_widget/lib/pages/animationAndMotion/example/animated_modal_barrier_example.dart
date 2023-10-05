import 'package:flutter/material.dart';

class AnimatedModalBarrierExample extends StatefulWidget {
  const AnimatedModalBarrierExample({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AnimatedModalBarrierExampleState();
  }
}

class _AnimatedModalBarrierExampleState extends State<AnimatedModalBarrierExample> with SingleTickerProviderStateMixin {
  bool _isLoading = false;
  late Widget _animatedModalBarrier;

  late AnimationController _animationController;
  late Animation<Color?> _colorTweenAnimation;

  @override
  void initState() {
    ColorTween colorTween = ColorTween(
      begin: const Color.fromARGB(100, 255, 255, 255),
      end: const Color.fromARGB(100, 127, 127, 127),
    );

    _animationController = AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _colorTweenAnimation = colorTween.animate(_animationController);

    _animatedModalBarrier = AnimatedModalBarrier(
      color: _colorTweenAnimation,
      dismissible: true,
    );

    super.initState();
  }

  List<Widget> buildWidgetList(BuildContext context) {
    List<Widget> widgets = <Widget>[
      ElevatedButton(
        child: const Text('Button'),
        onPressed: () {
          setState(() {
            _isLoading = true;
          });

          _animationController.reset();
          _animationController.forward();

          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Button is pressed')));

          Future.delayed(const Duration(seconds: 5), () {
            setState(() {
              _isLoading = false;
            });
          });
        },
      ),
    ];

    if (_isLoading) {
      widgets.add(_animatedModalBarrier);
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedModalBarrierExample')),
      body: Builder(
        builder: (context) => Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 100.0,
                  width: 250.0,
                  // alignment: FractionalOffset.center,
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: buildWidgetList(context),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
