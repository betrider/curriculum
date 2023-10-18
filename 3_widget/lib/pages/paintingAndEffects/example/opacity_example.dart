import 'package:flutter/material.dart';

/// 자식을 부분적으로 투명하게 만드는 위젯입니다.
class OpacityExample extends StatelessWidget {
  const OpacityExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OpacityExample'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.network(
            'https://raw.githubusercontent.com/flutter/assets-for-api-docs/master/packages/diagrams/assets/blend_mode_destination.jpeg',
            color: const Color.fromRGBO(255, 255, 255, 0.5),
            colorBlendMode: BlendMode.modulate,
          ),
          Opacity(
            opacity: 0.5,
            child: Image.network(
              'https://raw.githubusercontent.com/flutter/assets-for-api-docs/master/packages/diagrams/assets/blend_mode_destination.jpeg',
            ),
          ),
          // 불투명(구현o)
          Opacity(
            opacity: 0,
            child: Image.network(
              'https://raw.githubusercontent.com/flutter/assets-for-api-docs/master/packages/diagrams/assets/blend_mode_destination.jpeg',
            ),
          ),
          // 안보이게(구현x)
          Visibility(
            visible: false,
            child: Image.network(
              'https://raw.githubusercontent.com/flutter/assets-for-api-docs/master/packages/diagrams/assets/blend_mode_destination.jpeg',
            ),
          ),
          // 무대밖(구현o)
          Offstage(
            offstage: true,
            child: Image.network(
              'https://raw.githubusercontent.com/flutter/assets-for-api-docs/master/packages/diagrams/assets/blend_mode_destination.jpeg',
            ),
          ),
        ],
      ),
    );
  }
}
