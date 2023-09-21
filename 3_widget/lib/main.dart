import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:random_color/random_color.dart';

/// 참조 링크 : https://docs.flutter.dev/ui/widgets
void main() => runApp(MaterialApp.router(routerConfig: router));

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => const MainScreen(),
      routes: [
        GoRoute(
          path: 'accessibility',
          builder: (_, __) => const AccessibilityWidget(),
        ),
      ],
    ),
  ],
);

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var randomColor = RandomColor();
    return Scaffold(
      appBar: AppBar(title: const Text('Main Screen')),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(4),
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        crossAxisCount: 2,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(border: Border.all(color: randomColor.randomColor(), width: 2)),
            child: const Center(
              child: Text('FIRST'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(border: Border.all(color: randomColor.randomColor(), width: 2)),
            child: const Center(
              child: Text('SECOND'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(border: Border.all(color: randomColor.randomColor(), width: 2)),
            child: const Center(
              child: Text('THIRD'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(border: Border.all(color: randomColor.randomColor(), width: 2)),
            child: const Center(
              child: Text('FOURTH'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(border: Border.all(color: randomColor.randomColor(), width: 2)),
            child: const Center(
              child: Text('FIFTH'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(border: Border.all(color: randomColor.randomColor(), width: 2)),
            child: const Center(
              child: Text('SIXTH'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(border: Border.all(color: randomColor.randomColor(), width: 2)),
            child: const Center(
              child: Text('SEVENTH'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(border: Border.all(color: randomColor.randomColor(), width: 2)),
            child: const Center(
              child: Text('EIGHTH'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(border: Border.all(color: randomColor.randomColor(), width: 2)),
            child: const Center(
              child: Text('NINTH'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(border: Border.all(color: randomColor.randomColor(), width: 2)),
            child: const Center(
              child: Text('TEN'),
            ),
          ),
        ],
      ),
    );
  }
}

class AccessibilityWidget extends StatelessWidget {
  const AccessibilityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('주석'),
        centerTitle: true,
      ),
    );
  }
}

class AnimationWidget extends StatelessWidget {
  const AnimationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('애니메이션'),
        centerTitle: true,
      ),
    );
  }
}

class AssetsWidget extends StatelessWidget {
  const AssetsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('자산'),
        centerTitle: true,
      ),
    );
  }
}

class AsyncWidget extends StatelessWidget {
  const AsyncWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('비동기'),
        centerTitle: true,
      ),
    );
  }
}

class BasicsWidget extends StatelessWidget {
  const BasicsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('기초'),
        centerTitle: true,
      ),
    );
  }
}

class CupertinoWidget extends StatelessWidget {
  const CupertinoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('쿠퍼티노(IOS)'),
        centerTitle: true,
      ),
    );
  }
}

class InputWidget extends StatelessWidget {
  const InputWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('입력'),
        centerTitle: true,
      ),
    );
  }
}

class InteractionWidget extends StatelessWidget {
  const InteractionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('상호작용'),
        centerTitle: true,
      ),
    );
  }
}

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('레이아웃 구성'),
        centerTitle: true,
      ),
    );
  }
}

class MaterialWidget extends StatelessWidget {
  const MaterialWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('머테리얼(ANDROID)'),
        centerTitle: true,
      ),
    );
  }
}

class PaintingWidget extends StatelessWidget {
  const PaintingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('페인팅'),
        centerTitle: true,
      ),
    );
  }
}

class ScrollingWidget extends StatelessWidget {
  const ScrollingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('스크롤'),
        centerTitle: true,
      ),
    );
  }
}

class StylingWidget extends StatelessWidget {
  const StylingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('텍스트'),
        centerTitle: true,
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('자산'),
        centerTitle: true,
      ),
    );
  }
}

class OthersWidget extends StatelessWidget {
  const OthersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('기타'),
        centerTitle: true,
      ),
    );
  }
}
