import 'package:flutter/material.dart';

/// 이 위젯은 지정된 ColorFilter 에 따라 하위 콘텐츠 의 각 픽셀에 독립적으로 기능을 적용합니다 .
class ColorFilteredExample extends StatelessWidget {
  const ColorFilteredExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ColorFiltered(
              colorFilter: const ColorFilter.mode(
                Colors.red,
                BlendMode.modulate,
              ),
              child: Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
              ),
            ),
            ColorFiltered(
              colorFilter: const ColorFilter.mode(
                Colors.grey,
                BlendMode.saturation,
              ),
              child: Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const ColorFilter originalScale = ColorFilter.matrix(<double>[
  1, 0, 0, 0, 0, // Red
  0, 1, 0, 0, 0, // Green
  0, 0, 1, 0, 0, // Blue
  0, 0, 0, 1, 0, // Alpha
]);

const ColorFilter greyScale = ColorFilter.matrix(<double>[
  0.2126, 0.7152, 0.0722, 0, 0, // Red
  0.2126, 0.7152, 0.0722, 0, 0, // Green
  0.2126, 0.7152, 0.0722, 0, 0, // Blue
  0, 0, 0, 1, 0, // Alpha
]);
