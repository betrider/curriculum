import 'package:flutter/material.dart';
import '../../../lib_back/extensions.dart';
import '../../../lib_back/main.dart';

import 'cupertino.dart';

class CupertinoComponentsPage extends StatelessWidget {
  const CupertinoComponentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('쿠퍼티노'),
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
            title: (CupertinoActionSheetExample).name,
            onTap: () {
              context.pushRelative((CupertinoActionSheetExample).name);
            },
          ),
          MyCardWidget(
            title: (CupertinoActivityIndicatorExample).name,
            onTap: () {
              context.pushRelative((CupertinoActivityIndicatorExample).name);
            },
          ),
          MyCardWidget(
            title: (CupertinoAlertDialogExample).name,
            onTap: () {
              context.pushRelative((CupertinoAlertDialogExample).name);
            },
          ),
          MyCardWidget(
            title: (CupertinoButtonExample).name,
            onTap: () {
              context.pushRelative((CupertinoButtonExample).name);
            },
          ),
          MyCardWidget(
            title: (CupertinoContextMenuExample).name,
            onTap: () {
              context.pushRelative((CupertinoContextMenuExample).name);
            },
          ),
          MyCardWidget(
            title: (CupertinoDatePickerExample).name,
            onTap: () {
              context.pushRelative((CupertinoDatePickerExample).name);
            },
          ),
          MyCardWidget(
            title: (CupertinoAlertDialogExample).name,
            onTap: () {
              context.pushRelative((CupertinoAlertDialogExample).name);
            },
          ),
          MyCardWidget(
            title: (CupertinoFullScreenDialogTransitionExample).name,
            onTap: () {
              context.pushRelative((CupertinoFullScreenDialogTransitionExample).name);
            },
          ),
          MyCardWidget(
            title: (CupertinoListSectionExample).name,
            onTap: () {
              context.pushRelative((CupertinoListSectionExample).name);
            },
          ),
          MyCardWidget(
            title: (CupertinoListTileExample).name,
            onTap: () {
              context.pushRelative((CupertinoListTileExample).name);
            },
          ),
          MyCardWidget(
            title: (CupertinoNavigationBarExample).name,
            onTap: () {
              context.pushRelative((CupertinoNavigationBarExample).name);
            },
          ),
          MyCardWidget(
            title: (CupertinoPageScaffoldExample).name,
            onTap: () {
              context.pushRelative((CupertinoPageScaffoldExample).name);
            },
          ),
          MyCardWidget(
            title: (CupertinoPageTransitionExample).name,
            onTap: () {
              context.pushRelative((CupertinoPageTransitionExample).name);
            },
          ),
          MyCardWidget(
            title: (CupertinoPickerExample).name,
            onTap: () {
              context.pushRelative((CupertinoPickerExample).name);
            },
          ),
          MyCardWidget(
            title: (CupertinoPopupSurfaceExample).name,
            onTap: () {
              context.pushRelative((CupertinoPopupSurfaceExample).name);
            },
          ),
          MyCardWidget(
            title: (CupertinoSearchTextFieldExample).name,
            onTap: () {
              context.pushRelative((CupertinoSearchTextFieldExample).name);
            },
          ),
          MyCardWidget(
            title: (CupertinoSegmentedControlExample).name,
            onTap: () {
              context.pushRelative((CupertinoSegmentedControlExample).name);
            },
          ),
          MyCardWidget(
            title: (CupertinoSliderExample).name,
            onTap: () {
              context.pushRelative((CupertinoSliderExample).name);
            },
          ),
          MyCardWidget(
            title: (CupertinoSlidingSegmentedControlExample).name,
            onTap: () {
              context.pushRelative((CupertinoSlidingSegmentedControlExample).name);
            },
          ),
          MyCardWidget(
            title: (CupertinoSliverNavigationBarExample).name,
            onTap: () {
              context.pushRelative((CupertinoSliverNavigationBarExample).name);
            },
          ),
          MyCardWidget(
            title: (CupertinoSwitchExample).name,
            onTap: () {
              context.pushRelative((CupertinoSwitchExample).name);
            },
          ),
          MyCardWidget(
            title: (CupertinoTabBarExample).name,
            onTap: () {
              context.pushRelative((CupertinoTabBarExample).name);
            },
          ),
          MyCardWidget(
            title: (CupertinoTabScaffoldExample).name,
            onTap: () {
              context.pushRelative((CupertinoTabScaffoldExample).name);
            },
          ),
          MyCardWidget(
            title: (CupertinoTabViewExample).name,
            onTap: () {
              context.pushRelative((CupertinoTabViewExample).name);
            },
          ),
          MyCardWidget(
            title: (CupertinoTextFieldExample).name,
            onTap: () {
              context.pushRelative((CupertinoTextFieldExample).name);
            },
          ),
          MyCardWidget(
            title: (CupertinoTimerPickerExample).name,
            onTap: () {
              context.pushRelative((CupertinoTimerPickerExample).name);
            },
          ),
        ],
      ),
    );
  }
}
