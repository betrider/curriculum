import 'package:flutter/material.dart';
import 'package:flutter_widget/pages/accessibility/accessibility.dart';
import 'package:flutter_widget/pages/animationAndMotion/animation_and_motion.dart';
import 'package:flutter_widget/pages/assetsImagesAndIcons/assets_images_and_icons.dart';
import 'package:flutter_widget/pages/async/async.dart';
import 'package:flutter_widget/pages/basics/basics.dart';
import 'package:flutter_widget/pages/cupertino/cupertino.dart';
import 'package:flutter_widget/pages/input/input.dart';
import 'package:flutter_widget/pages/interactionModels/interaction_models.dart';
import 'package:flutter_widget/pages/layout/layout.dart';
import 'package:flutter_widget/pages/materialComponents/material_components.dart';
import 'package:flutter_widget/pages/others/others.dart';
import 'package:flutter_widget/pages/paintingAndEffects/painting_and_effects.dart';
import 'package:flutter_widget/pages/scrolling/scrolling.dart';
import 'package:flutter_widget/pages/styling/styling.dart';
import 'package:flutter_widget/pages/text/text.dart';
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
        GoRoute(
          path: 'animation',
          builder: (_, __) => const AnimationAndMotionWidget(),
        ),
        GoRoute(
          path: 'assets',
          builder: (_, __) => const AssetsImagesAndIconsWidget(),
        ),
        GoRoute(
          path: 'async',
          builder: (_, __) => const AsyncWidget(),
        ),
        GoRoute(
          path: 'basics',
          builder: (_, __) => const BasicsWidget(),
        ),
        GoRoute(
          path: 'cupertino',
          builder: (_, __) => const CupertinoWidget(),
        ),
        GoRoute(
          path: 'input',
          builder: (_, __) => const InputWidget(),
        ),
        GoRoute(
          path: 'interaction',
          builder: (_, __) => const InteractionModelsWidget(),
        ),
        GoRoute(
          path: 'layout',
          builder: (_, __) => const LayoutWidget(),
        ),
        GoRoute(
          path: 'material',
          builder: (_, __) => const MaterialComponentsWidget(),
        ),
        GoRoute(
          path: 'painting',
          builder: (_, __) => const PaintingAndEffectsWidget(),
        ),
        GoRoute(
          path: 'scrolling',
          builder: (_, __) => const ScrollingWidget(),
        ),
        GoRoute(
          path: 'styling',
          builder: (_, __) => const StylingWidget(),
        ),
        GoRoute(
          path: 'text',
          builder: (_, __) => const TextWidget(),
        ),
        GoRoute(
          path: 'others',
          builder: (_, __) => const OthersWidget(),
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
          InkWell(
            onTap: (){
              context.push('/accessibility');
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(border: Border.all(color: randomColor.randomColor(), width: 2)),
              child: const Center(
                child: Text(
                  'Accessibility',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              context.push('/animation');
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(border: Border.all(color: randomColor.randomColor(), width: 2)),
              child: const Center(
                child: Text(
                  'Animation and motion widgets',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              context.push('/assets');
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(border: Border.all(color: randomColor.randomColor(), width: 2)),
              child: const Center(
                child: Text(
                  'Assets, Images, and Icons',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              context.push('/async');
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(border: Border.all(color: randomColor.randomColor(), width: 2)),
              child: const Center(
                child: Text(
                  'Async',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              context.push('/basics');
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(border: Border.all(color: randomColor.randomColor(), width: 2)),
              child: const Center(
                child: Text(
                  'Basics',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              context.push('/cupertino');
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(border: Border.all(color: randomColor.randomColor(), width: 2)),
              child: const Center(
                child: Text(
                  'Cupertino (iOS-style widgets)',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              context.push('/input');
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(border: Border.all(color: randomColor.randomColor(), width: 2)),
              child: const Center(
                child: Text(
                  'Input',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              context.push('/interaction');
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(border: Border.all(color: randomColor.randomColor(), width: 2)),
              child: const Center(
                child: Text(
                  'Interaction Models',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              context.push('/layout');
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(border: Border.all(color: randomColor.randomColor(), width: 2)),
              child: const Center(
                child: Text(
                  'Layout',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              context.push('/material');
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(border: Border.all(color: randomColor.randomColor(), width: 2)),
              child: const Center(
                child: Text(
                  'Material Components',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              context.push('/painting');
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(border: Border.all(color: randomColor.randomColor(), width: 2)),
              child: const Center(
                child: Text(
                  'Painting and effects',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              context.push('/scrolling');
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(border: Border.all(color: randomColor.randomColor(), width: 2)),
              child: const Center(
                child: Text(
                  'Scrolling',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              context.push('/styling');
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(border: Border.all(color: randomColor.randomColor(), width: 2)),
              child: const Center(
                child: Text(
                  'Styling',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              context.push('/text');
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(border: Border.all(color: randomColor.randomColor(), width: 2)),
              child: const Center(
                child: Text(
                  'Text',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              context.push('/others');
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(border: Border.all(color: randomColor.randomColor(), width: 2)),
              child: const Center(
                child: Text(
                  'Others',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
