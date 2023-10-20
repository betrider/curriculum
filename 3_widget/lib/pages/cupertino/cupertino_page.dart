import 'package:flutter/material.dart';
import 'package:flutter_widget/extensions.dart';
import 'package:flutter_widget/main.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_action_sheet_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_activity_indicator_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_alert_dialog_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_button_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_context_menu_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_date_picker_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_full_screen_dialog_transition_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_list_section_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_list_tile_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_navigation_bar_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_page_scaffold_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_page_transition_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_picker_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_popup_surface_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_search_text_field_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_segmented_control_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_slider_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_sliding_segmented_control_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_sliver_navigation_bar_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_switch_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_tab_bar_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_tab_scaffold_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_tab_view_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_text_field_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_timer_picker_example.dart';

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
            title: (CupertinoFullscreenDialogTransitionExample).name,
            onTap: () {
              context.pushRelative((CupertinoFullscreenDialogTransitionExample).name);
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
            title: (SegmentedControlExample).name,
            onTap: () {
              context.pushRelative((SegmentedControlExample).name);
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
