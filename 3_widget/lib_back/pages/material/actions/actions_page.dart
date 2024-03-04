import 'package:flutter/material.dart';
import '../../../../lib_back/extensions.dart';
import '../../../../lib_back/main.dart';

import 'actions.dart';

class ActionsPage extends StatelessWidget {
  const ActionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ActionsPage'),
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
            title: (CommonButtonsExample).name,
            onTap: () {
              context.pushRelative((CommonButtonsExample).name);
            },
          ),
          MyCardWidget(
            title: (FABExample).name,
            onTap: () {
              context.pushRelative((FABExample).name);
            },
          ),
          MyCardWidget(
            title: (IconButtonExample).name,
            onTap: () {
              context.pushRelative((IconButtonExample).name);
            },
          ),
          MyCardWidget(
            title: (SegmentedButtonExample).name,
            onTap: () {
              context.pushRelative((SegmentedButtonExample).name);
            },
          ),
        ],
      ),
    );
  }
}
