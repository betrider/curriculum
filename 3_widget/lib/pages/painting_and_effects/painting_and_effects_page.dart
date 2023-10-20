import 'package:flutter/material.dart';
import 'package:flutter_widget/extensions.dart';
import 'package:flutter_widget/main.dart';

class PaintingAndEffectsPage extends StatelessWidget {
  const PaintingAndEffectsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('페인팅'),
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
            title: 'BackdropFilterExample',
            onTap: () {
              context.pushRelative('BackdropFilterExample');
            },
          ),
          MyCardWidget(
            title: 'ClipOvalExample',
            onTap: () {
              context.pushRelative('ClipOvalExample');
            },
          ),
          MyCardWidget(
            title: 'ClipPathExample',
            onTap: () {
              context.pushRelative('ClipPathExample');
            },
          ),
          MyCardWidget(
            title: 'ClipRRectExample',
            onTap: () {
              context.pushRelative('ClipRRectExample');
            },
          ),
          MyCardWidget(
            title: 'ClipRectExample',
            onTap: () {
              context.pushRelative('ClipRectExample');
            },
          ),
          MyCardWidget(
            title: 'ColorFilteredExample',
            onTap: () {
              context.pushRelative('ColorFilteredExample');
            },
          ),
          MyCardWidget(
            title: 'CustomPaintExample',
            onTap: () {
              context.pushRelative('CustomPaintExample');
            },
          ),
          MyCardWidget(
            title: 'DecoratedBoxExample',
            onTap: () {
              context.pushRelative('DecoratedBoxExample');
            },
          ),
          MyCardWidget(
            title: 'FractionalTranslationExample',
            onTap: () {
              context.pushRelative('FractionalTranslationExample');
            },
          ),
          MyCardWidget(
            title: 'OpacityExample',
            onTap: () {
              context.pushRelative('OpacityExample');
            },
          ),
          MyCardWidget(
            title: 'RotatedBoxExample',
            onTap: () {
              context.pushRelative('RotatedBoxExample');
            },
          ),
          MyCardWidget(
            title: 'TransformExample',
            onTap: () {
              context.pushRelative('TransformExample');
            },
          ),
        ],
      ),
    );
  }
}
