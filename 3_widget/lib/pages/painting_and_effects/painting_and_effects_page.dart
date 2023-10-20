import 'package:flutter/material.dart';
import 'package:flutter_widget/extensions.dart';
import 'package:flutter_widget/main.dart';

import 'painting_and_effects.dart';

class PaintingAndEffectsPage extends StatelessWidget {
  const PaintingAndEffectsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('그리기'),
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
            title: (BackdropFilterExample).name,
            onTap: () {
              context.pushRelative((BackdropFilterExample).name);
            },
          ),
          MyCardWidget(
            title: (ClipOvalExample).name,
            onTap: () {
              context.pushRelative((ClipOvalExample).name);
            },
          ),
          MyCardWidget(
            title: (ClipPathExample).name,
            onTap: () {
              context.pushRelative((ClipPathExample).name);
            },
          ),
          MyCardWidget(
            title: (ClipRRectExample).name,
            onTap: () {
              context.pushRelative((ClipRRectExample).name);
            },
          ),
          MyCardWidget(
            title: (ClipRectExample).name,
            onTap: () {
              context.pushRelative((ClipRectExample).name);
            },
          ),
          MyCardWidget(
            title: (ColorFilteredExample).name,
            onTap: () {
              context.pushRelative((ColorFilteredExample).name);
            },
          ),
          MyCardWidget(
            title: (CustomPaintExample).name,
            onTap: () {
              context.pushRelative((CustomPaintExample).name);
            },
          ),
          MyCardWidget(
            title: (DecoratedBoxExample).name,
            onTap: () {
              context.pushRelative((DecoratedBoxExample).name);
            },
          ),
          MyCardWidget(
            title: (FractionalTranslationExample).name,
            onTap: () {
              context.pushRelative((FractionalTranslationExample).name);
            },
          ),
          MyCardWidget(
            title: (OpacityExample).name,
            onTap: () {
              context.pushRelative((OpacityExample).name);
            },
          ),
          MyCardWidget(
            title: (RotatedBoxExample).name,
            onTap: () {
              context.pushRelative((RotatedBoxExample).name);
            },
          ),
          MyCardWidget(
            title: (TransformExample).name,
            onTap: () {
              context.pushRelative((TransformExample).name);
            },
          ),
        ],
      ),
    );
  }
}
