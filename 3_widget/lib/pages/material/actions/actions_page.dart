import 'package:flutter/material.dart';
import 'package:flutter_widget/extensions.dart';
import 'package:flutter_widget/main.dart';

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
            title: 'CommonButtonsExample',
            onTap: () {
              context.pushRelative('CommonButtonsExample');
            },
          ),
          MyCardWidget(
            title: 'FABExample',
            onTap: () {
              context.pushRelative('FABExample');
            },
          ),
          MyCardWidget(
            title: 'IconButtonExample',
            onTap: () {
              context.pushRelative('IconButtonExample');
            },
          ),
          MyCardWidget(
            title: 'SegmentedButtonExample',
            onTap: () {
              context.pushRelative('SegmentedButtonExample');
            },
          ),
        ],
      ),
    );
  }
}
