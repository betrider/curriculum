import 'package:flutter/material.dart';
import 'package:flutter_widget/context_extension.dart';
import 'package:flutter_widget/main.dart';

class ContainmentExample extends StatelessWidget {
  const ContainmentExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ContainmentExample'),
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
            title: 'BottomsheetExample',
            onTap: () {
              context.pushRelative('BottomsheetExample');
            },
          ),
          MyCardWidget(
            title: 'CardExample',
            onTap: () {
              context.pushRelative('CardExample');
            },
          ),
          MyCardWidget(
            title: 'DialogExample',
            onTap: () {
              context.pushRelative('DialogExample');
            },
          ),
          MyCardWidget(
            title: 'DividerExample',
            onTap: () {
              context.pushRelative('DividerExample');
            },
          ),
          MyCardWidget(
            title: 'ListTileExample',
            onTap: () {
              context.pushRelative('ListTileExample');
            },
          ),
        ],
      ),
    );
  }
}
