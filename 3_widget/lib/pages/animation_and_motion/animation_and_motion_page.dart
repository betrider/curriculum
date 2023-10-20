import 'package:flutter/material.dart';
import 'package:flutter_widget/extensions.dart';
import 'package:flutter_widget/main.dart';

import 'animation_and_motion.dart';

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
              title: (AnimatedAlignExample).name,
              onTap: () {
                context.pushRelative((AnimatedAlignExample).name);
              },
            ),
            MyCardWidget(
              title: (AnimatedBuilderExample).name,
              onTap: () {
                context.pushRelative((AnimatedBuilderExample).name);
              },
            ),
            MyCardWidget(
              title: (AnimatedContainerExample).name,
              onTap: () {
                context.pushRelative((AnimatedContainerExample).name);
              },
            ),
            MyCardWidget(
              title: (AnimatedCrossFadeExample).name,
              onTap: () {
                context.pushRelative((AnimatedCrossFadeExample).name);
              },
            ),
            MyCardWidget(
              title: (AnimatedDefaultTextStyleExample).name,
              onTap: () {
                context.pushRelative((AnimatedDefaultTextStyleExample).name);
              },
            ),
            MyCardWidget(
              title: (AnimatedListExample).name,
              onTap: () {
                context.pushRelative((AnimatedListExample).name);
              },
            ),
            MyCardWidget(
              title: (AnimatedListStateExample).name,
              onTap: () {
                context.pushRelative((AnimatedListStateExample).name);
              },
            ),
            MyCardWidget(
              title: (AnimatedModalBarrierExample).name,
              onTap: () {
                context.pushRelative((AnimatedModalBarrierExample).name);
              },
            ),
            MyCardWidget(
              title: (AnimatedOpacityExample).name,
              onTap: () {
                context.pushRelative((AnimatedOpacityExample).name);
              },
            ),
            MyCardWidget(
              title: (AnimatedPhysicalModelExample).name,
              onTap: () {
                context.pushRelative((AnimatedPhysicalModelExample).name);
              },
            ),
            MyCardWidget(
              title: (AnimatedPositionedExample).name,
              onTap: () {
                context.pushRelative((AnimatedPositionedExample).name);
              },
            ),
            MyCardWidget(
              title: (AnimatedSizeExample).name,
              onTap: () {
                context.pushRelative((AnimatedSizeExample).name);
              },
            ),
            MyCardWidget(
              title: (AnimatedWidgetExample).name,
              onTap: () {
                context.pushRelative((AnimatedWidgetExample).name);
              },
            ),
            MyCardWidget(
              title: (DecoratedBoxTransitionExample).name,
              onTap: () {
                context.pushRelative((DecoratedBoxTransitionExample).name);
              },
            ),
            MyCardWidget(
              title: (FadeTransitionExample).name,
              onTap: () {
                context.pushRelative((FadeTransitionExample).name);
              },
            ),
            MyCardWidget(
              title: (HeroExample).name,
              onTap: () {
                context.pushRelative((HeroExample).name);
              },
            ),
            MyCardWidget(
              title: (ImplicitlyAnimatedWidgetExample).name,
              onTap: () {
                context.pushRelative((ImplicitlyAnimatedWidgetExample).name);
              },
            ),
            MyCardWidget(
              title: (PositionedTransitionExample).name,
              onTap: () {
                context.pushRelative((PositionedTransitionExample).name);
              },
            ),
            MyCardWidget(
              title: (RotationTransitionExample).name,
              onTap: () {
                context.pushRelative((RotationTransitionExample).name);
              },
            ),
            MyCardWidget(
              title: (ScaleTransitionExample).name,
              onTap: () {
                context.pushRelative((ScaleTransitionExample).name);
              },
            ),
            MyCardWidget(
              title: (SizeTransitionExample).name,
              onTap: () {
                context.pushRelative((SizeTransitionExample).name);
              },
            ),
            MyCardWidget(
              title: (SlideTransitionExample).name,
              onTap: () {
                context.pushRelative((SlideTransitionExample).name);
              },
            ),
          ],
        ));
  }
}
