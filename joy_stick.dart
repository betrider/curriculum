import 'dart:developer';

import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  void callback(x, y) {
    log('callback x => $x and y $y');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: JoyStick(radius: 100.0, stickRadius: 20, callback: callback),
      ),
    );
  }
}

class JoyStick extends StatefulWidget {
  final double radius;
  final double stickRadius;
  final Function callback;

  const JoyStick({
    Key? key,
    required this.radius,
    required this.stickRadius,
    required this.callback,
  }) : super(key: key);

  @override
  JoyStickState createState() => JoyStickState();
}

class JoyStickState extends State<JoyStick> {
  final GlobalKey _joyStickContainer = GlobalKey();
  double yOff = 0, xOff = 0;
  double _x = 0, _y = 0;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final RenderBox renderBoxWidget =
          _joyStickContainer.currentContext?.findRenderObject() as RenderBox;
      final offset = renderBoxWidget.localToGlobal(Offset.zero);

      xOff = offset.dx;
      yOff = offset.dy;
    });

    _centerStick();
  }

  void _centerStick() {
    setState(() {
      _x = widget.radius;
      _y = widget.radius;
    });

    _sendCoordinates(_x, _y);
  }

  int map(x, inMin, inMax, outMin, outMax) {
    return ((x - inMin) * (outMax - outMin) / (inMax - inMin) + outMin).floor();
  }
  
  void _onPointerMove(PointerEvent details) {
    final x = details.position.dx - xOff;
    final y = details.position.dy - yOff;

    // Calculate distance between current position and center of the circle
    double distance = math
        .sqrt(math.pow(x - widget.radius, 2) + math.pow(y - widget.radius, 2));

    if (distance <= widget.radius) {
      // If pointer is inside the circle, set the position directly
      setState(() {
        _x = x;
        _y = y;
      });
    } else {
      // If pointer is outside the circle, calculate the new x and y coordinates on the circumference
      double angle = math.atan2(y - widget.radius, x - widget.radius);
      double newX = widget.radius * math.cos(angle) + widget.radius;
      double newY = widget.radius * math.sin(angle) + widget.radius;

      setState(() {
        _x = newX;
        _y = newY;
      });
    }

    // Limit blue pointer's movement within the inner circle
    double distanceFromCenter = math.sqrt(
        math.pow(_x - widget.radius, 2) + math.pow(_y - widget.radius, 2));
    if (distanceFromCenter > widget.radius - widget.stickRadius) {
      // Calculate angle between center of the circle and current position
      double angle = math.atan2(_y - widget.radius, _x - widget.radius);

      // Calculate new x and y coordinates on the circumference of the inner circle
      _x = (widget.radius - widget.stickRadius) * math.cos(angle) +
          widget.radius;
      _y = (widget.radius - widget.stickRadius) * math.sin(angle) +
          widget.radius;

      setState(() {});
    }

    _sendCoordinates(_x, _y);
  }

  void _onPointerUp(PointerUpEvent event) {
    _centerStick();
  }

  void _sendCoordinates(double x, double y) {
    double speed = y - widget.radius;
    double direction = x - widget.radius;

    var vSpeed = -1 *
        map(speed, 0, (widget.radius - widget.stickRadius).floor(), 0, 100);
    var vDirection =
        map(direction, 0, (widget.radius - widget.stickRadius).floor(), 0, 100);

    widget.callback(vDirection, vSpeed);
  }

  isStickInside(x, y, circleX, circleY, circleRadius) {
    var absX = math.pow((x - circleX).abs(), 2.0);
    var absY = math.pow((y - circleY).abs(), 2.0);
    return math.sqrt(absX + absY) < circleRadius;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Listener(
        behavior: HitTestBehavior.opaque,
        onPointerMove: _onPointerMove,
        onPointerUp: _onPointerUp,
        child: Container(
          key: _joyStickContainer,
          width: widget.radius * 2,
          height: widget.radius * 2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.radius),
            color: Colors.grey.shade800,
          ),
          child: Stack(
            children: [
              Positioned(
                left: _x - widget.stickRadius,
                top: _y - widget.stickRadius,
                child: Container(
                  width: widget.stickRadius * 2,
                  height: widget.stickRadius * 2,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(widget.stickRadius),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
