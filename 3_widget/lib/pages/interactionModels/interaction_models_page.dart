import 'package:flutter/material.dart';
import 'package:flutter_widget/context_extension.dart';
import 'package:flutter_widget/main.dart';

class InteractionModelsPage extends StatelessWidget {
  const InteractionModelsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('상호작용'),
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
            title: 'AbsorbPointerExample',
            onTap: () {
              context.pushRelative('AbsorbPointerExample');
            },
          ),
          MyCardWidget(
            title: 'DismissibleExample',
            onTap: () {
              context.pushRelative('DismissibleExample');
            },
          ),
          MyCardWidget(
            title: 'DragTargetExample',
            onTap: () {
              context.pushRelative('DragTargetExample');
            },
          ),
          MyCardWidget(
            title: 'DraggableExample',
            onTap: () {
              context.pushRelative('DraggableExample');
            },
          ),
          MyCardWidget(
            title: 'DraggableScrollableSheetExample',
            onTap: () {
              context.pushRelative('DraggableScrollableSheetExample');
            },
          ),
          MyCardWidget(
            title: 'GestureDetectorExample',
            onTap: () {
              context.pushRelative('GestureDetectorExample');
            },
          ),
          MyCardWidget(
            title: 'IgnorePointerExample',
            onTap: () {
              context.pushRelative('IgnorePointerExample');
            },
          ),
          MyCardWidget(
            title: 'InteractiveViewerExample',
            onTap: () {
              context.pushRelative('InteractiveViewerExample');
            },
          ),
          MyCardWidget(
            title: 'LongPressDraggableExample',
            onTap: () {
              context.pushRelative('LongPressDraggableExample');
            },
          ),
          MyCardWidget(
            title: 'ScrollableExample',
            onTap: () {
              context.pushRelative('ScrollableExample');
            },
          ),
        ],
      ),
    );
  }
}
