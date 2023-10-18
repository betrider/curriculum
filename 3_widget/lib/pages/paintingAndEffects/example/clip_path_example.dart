import 'package:flutter/material.dart';

/// 경로를 사용하여 하위 항목을 클립하는 위젯입니다.
class ClipPathExample extends StatelessWidget {
  final Color backgroundColor = Colors.red;

  const ClipPathExample({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClipPathExample'),
        centerTitle: true,
      ),
      body: Center(
        child: ClipPath(
          clipper: BottomWaveClipper(),
          child: Container(
            color: backgroundColor,
            width: 300,
            height: 200,
          ),
        ),
      ),
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 40);
    path.quadraticBezierTo(size.width / 4, size.height - 80, size.width / 2, size.height - 40);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height, size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
