import 'package:flutter/material.dart';
import 'package:flutter_widget/extensions.dart';
import 'package:flutter_widget/main.dart';

import 'navigation.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NavigationPage'),
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
            title: (AppBarExample).name,
            onTap: () {
              context.pushRelative((AppBarExample).name);
            },
          ),
          MyCardWidget(
            title: (BottomAppBarExample).name,
            onTap: () {
              context.pushRelative((BottomAppBarExample).name);
            },
          ),
          MyCardWidget(
            title: (NavigationBarExample).name,
            onTap: () {
              context.pushRelative((NavigationBarExample).name);
            },
          ),
          MyCardWidget(
            title: (NavigationDrawerExample).name,
            onTap: () {
              context.pushRelative((NavigationDrawerExample).name);
            },
          ),
          MyCardWidget(
            title: (NavigationRailExample).name,
            onTap: () {
              context.pushRelative((NavigationRailExample).name);
            },
          ),
          MyCardWidget(
            title: (TabBarExample).name,
            onTap: () {
              context.pushRelative((TabBarExample).name);
            },
          ),
        ],
      ),
    );
  }
}
