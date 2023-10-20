import 'package:flutter/material.dart';
import 'package:flutter_widget/extensions.dart';
import 'package:flutter_widget/main.dart';

import 'interaction_models.dart';

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
            title: (AbsorbPointerExample).name,
            onTap: () {
              context.pushRelative((AbsorbPointerExample).name,);
            },
          ),
          MyCardWidget(
            title: (DismissibleExample).name,
            onTap: () {
              context.pushRelative((DismissibleExample).name,);
            },
          ),
          MyCardWidget(
            title: (DragTargetExample).name,
            onTap: () {
              context.pushRelative((DragTargetExample).name,);
            },
          ),
          MyCardWidget(
            title: (DraggableExample).name,
            onTap: () {
              context.pushRelative((DraggableExample).name,);
            },
          ),
          MyCardWidget(
            title: (DraggableScrollableSheetExample).name,
            onTap: () {
              context.pushRelative((DraggableScrollableSheetExample).name,);
            },
          ),
          MyCardWidget(
            title: (GestureDetectorExample).name,
            onTap: () {
              context.pushRelative((GestureDetectorExample).name,);
            },
          ),
          MyCardWidget(
            title: (IgnorePointerExample).name,
            onTap: () {
              context.pushRelative((IgnorePointerExample).name,);
            },
          ),
          MyCardWidget(
            title: (InteractiveViewerExample).name,
            onTap: () {
              context.pushRelative((InteractiveViewerExample).name,);
            },
          ),
          MyCardWidget(
            title: (LongPressDraggableExample).name,
            onTap: () {
              context.pushRelative((LongPressDraggableExample).name,);
            },
          ),
          MyCardWidget(
            title: (ScrollableExample).name,
            onTap: () {
              context.pushRelative((ScrollableExample).name,);
            },
          ),
        ],
      ),
    );
  }
}
