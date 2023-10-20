import 'package:flutter/material.dart';
import 'package:flutter_widget/extensions.dart';
import 'package:flutter_widget/main.dart';

import 'containment.dart';

class ContainmentPage extends StatelessWidget {
  const ContainmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ContainmentPage'),
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
            title: (BottomSheetExample).name,
            onTap: () {
              context.pushRelative((BottomSheetExample).name);
            },
          ),
          MyCardWidget(
            title: (CardExample).name,
            onTap: () {
              context.pushRelative((CardExample).name);
            },
          ),
          MyCardWidget(
            title: (DialogExample).name,
            onTap: () {
              context.pushRelative((DialogExample).name);
            },
          ),
          MyCardWidget(
            title: (DividerExample).name,
            onTap: () {
              context.pushRelative((DividerExample).name);
            },
          ),
          MyCardWidget(
            title: (ListTileExample).name,
            onTap: () {
              context.pushRelative((ListTileExample).name);
            },
          ),
        ],
      ),
    );
  }
}
