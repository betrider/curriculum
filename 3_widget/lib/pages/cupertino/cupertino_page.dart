import 'package:flutter/material.dart';
import 'package:flutter_widget/main.dart';

class CupertinoComponentsPage extends StatelessWidget {
  const CupertinoComponentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cupertino Components widgets')),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(4),
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        crossAxisCount: 2,
        children: [
          MyCardWidget(
            title: 'CupertinoActionSheet',
            onTap: () {
              // ...
            },
          ),
          MyCardWidget(
            title: 'CupertinoActivityIndicator',
            onTap: () {
              // ...
            },
          ),
          MyCardWidget(
            title: 'CupertinoAlertDialog',
            onTap: () {
              // ...
            },
          ),
          MyCardWidget(
            title: 'CupertinoButton',
            onTap: () {
              // ...
            },
          ),
          MyCardWidget(
            title: 'CupertinoContextMenu',
            onTap: () {
              // ...
            },
          ),
          MyCardWidget(
            title: 'CupertinoDatePicker',
            onTap: () {
              // ...
            },
          ),
          MyCardWidget(
            title: 'CupertinoDialogAction',
            onTap: () {
              // ...
            },
          ),
          MyCardWidget(
            title: 'CupertinoFullscreenDialogTransition',
            onTap: () {
              // ...
            },
          ),
          MyCardWidget(
            title: 'CupertinoListSection',
            onTap: () {
              // ...
            },
          ),
          MyCardWidget(
            title: 'CupertinoListTile',
            onTap: () {
              // ...
            },
          ),
          MyCardWidget(
            title: 'CupertinoNavigationBar',
            onTap: () {
              // ...
            },
          ),
          MyCardWidget(
            title: 'CupertinoPageScaffold',
            onTap: () {
              // ...
            },
          ),
          MyCardWidget(
            title: 'CupertinoPageTransition',
            onTap: () {
              // ...
            },
          ),
          MyCardWidget(
            title: 'CupertinoPicker',
            onTap: () {
              // ...
            },
          ),
          MyCardWidget(
            title: 'CupertinoPopupSurface',
            onTap: () {
              // ...
            },
          ),
          MyCardWidget(
            title: 'CupertinoScrollbar',
            onTap: () {
              // ...
            },
          ),
          MyCardWidget(
            title: 'CupertinoSearchTextField',
            onTap: () {
              // ...
            },
          ),
          MyCardWidget(
            title: 'CupertinoSegmentedControl',
            onTap: () {
              // ...
            },
          ),
          MyCardWidget(
            title: 'CupertinoSlidingSegmentedControl',
            onTap: () {
              // ...
            },
          ),
          MyCardWidget(
            title: 'CupertinoSliverNavigationBar',
            onTap: () {
              // ...
            },
          ),
          MyCardWidget(
            title: 'CupertinoSwitch',
            onTap: () {
              // ...
            },
          ),
          MyCardWidget(
            title: 'CupertinoTabBar',
            onTap: () {
              // ...
            },
          ),
          MyCardWidget(
            title: 'CupertinoTabScaffold',
            onTap: () {
              // ...
            },
          ),
          MyCardWidget(
            title: 'CupertinoTabView',
            onTap: () {
              // ...
            },
          ),
          MyCardWidget(
            title: 'CupertinoTextField',
            onTap: () {
              // ...
            },
          ),
          MyCardWidget(
            title: 'CupertinoTimerPicker',
            onTap: () {
              // ...
            },
          ),
        ],
      ),
    );
  }
}