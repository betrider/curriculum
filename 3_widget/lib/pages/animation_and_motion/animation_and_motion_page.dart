import 'package:flutter/material.dart';
import 'package:flutter_widget/extensions.dart';
import 'package:flutter_widget/main.dart';

class AnimationAndMotionPage extends StatelessWidget {
  const AnimationAndMotionPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('애니메이션'),
          centerTitle: true,
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(4),
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
          crossAxisCount: 2,
          children: [
            MyCardWidget(
              title: 'AnimatedAlignExample',
              onTap: () {
                context.pushRelative('AnimatedAlignExample');
              },
            ),
            MyCardWidget(
              title: 'AnimatedBuilderExample',
              onTap: () {
                context.pushRelative('AnimatedBuilderExample');
              },
            ),
            MyCardWidget(
              title: 'AnimatedContainerExample',
              onTap: () {
                context.pushRelative('AnimatedContainerExample');
              },
            ),
            MyCardWidget(
              title: 'AnimatedCrossFadeExample',
              onTap: () {
                context.pushRelative('AnimatedCrossFadeExample');
              },
            ),
            MyCardWidget(
              title: 'AnimatedDefaultTextStyleExample',
              onTap: () {
                context.pushRelative('AnimatedDefaultTextStyleExample');
              },
            ),
            MyCardWidget(
              title: 'AnimatedListExample',
              onTap: () {
                context.pushRelative('AnimatedListExample');
              },
            ),
            MyCardWidget(
              title: 'AnimatedListStateExample',
              onTap: () {
                context.pushRelative('AnimatedListStateExample');
              },
            ),
            MyCardWidget(
              title: 'AnimatedModalBarrierExample',
              onTap: () {
                context.pushRelative('AnimatedModalBarrierExample');
              },
            ),
            MyCardWidget(
              title: 'AnimatedOpacityExample',
              onTap: () {
                context.pushRelative('AnimatedOpacityExample');
              },
            ),
            MyCardWidget(
              title: 'AnimatedPhysicalModelExample',
              onTap: () {
                context.pushRelative('AnimatedPhysicalModelExample');
              },
            ),
            MyCardWidget(
              title: 'AnimatedPositionedExample',
              onTap: () {
                context.pushRelative('AnimatedPositionedExample');
              },
            ),
            MyCardWidget(
              title: 'AnimatedSizeExample',
              onTap: () {
                context.pushRelative('AnimatedSizeExample');
              },
            ),
            MyCardWidget(
              title: 'AnimatedWidgetExample',
              onTap: () {
                context.pushRelative('AnimatedWidgetExample');
              },
            ),
            MyCardWidget(
              title: 'DecoratedBoxTransitionExample',
              onTap: () {
                context.pushRelative('DecoratedBoxTransitionExample');
              },
            ),
            MyCardWidget(
              title: 'FadeTransitionExample',
              onTap: () {
                context.pushRelative('FadeTransitionExample');
              },
            ),
            MyCardWidget(
              title: 'HeroExample',
              onTap: () {
                context.pushRelative('HeroExample');
              },
            ),
            MyCardWidget(
              title: 'ImplicitlyAnimatedWidgetExample',
              onTap: () {
                context.pushRelative('ImplicitlyAnimatedWidgetExample');
              },
            ),
            MyCardWidget(
              title: 'PositionedTransitionExample',
              onTap: () {
                context.pushRelative('PositionedTransitionExample');
              },
            ),
            MyCardWidget(
              title: 'RotationTransitionExample',
              onTap: () {
                context.pushRelative('RotationTransitionExample');
              },
            ),
            MyCardWidget(
              title: 'ScaleTransitionExample',
              onTap: () {
                context.pushRelative('ScaleTransitionExample');
              },
            ),
            MyCardWidget(
              title: 'SizeTransitionExample',
              onTap: () {
                context.pushRelative('SizeTransitionExample');
              },
            ),
            MyCardWidget(
              title: 'SlideTransitionExample',
              onTap: () {
                context.pushRelative('SlideTransitionExample');
              },
            ),
          ],
        ));
  }
}
