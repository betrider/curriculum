import 'package:flutter/material.dart';
import 'package:flutter_widget/extensions.dart';
import 'package:flutter_widget/main.dart';

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
            title: 'AppBarExample',
            onTap: () {
              context.pushRelative('AppBarExample');
            },
          ),
          MyCardWidget(
            title: 'BottomAppBarExample',
            onTap: () {
              context.pushRelative('BottomAppBarExample');
            },
          ),
          MyCardWidget(
            title: 'NavigationBarExample',
            onTap: () {
              context.pushRelative('NavigationBarExample');
            },
          ),
          MyCardWidget(
            title: 'NavigationDrawerExample',
            onTap: () {
              context.pushRelative('NavigationDrawerExample');
            },
          ),
          MyCardWidget(
            title: 'NavigationRailExample',
            onTap: () {
              context.pushRelative('NavigationRailExample');
            },
          ),
          MyCardWidget(
            title: 'TabBarExample',
            onTap: () {
              context.pushRelative('TabBarExample');
            },
          ),
        ],
      ),
    );
  }
}
