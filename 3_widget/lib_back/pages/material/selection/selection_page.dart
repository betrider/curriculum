import 'package:flutter/material.dart';
import '../../../../lib_back/extensions.dart';
import '../../../../lib_back/main.dart';

import 'selection.dart';

class SelectionPage extends StatelessWidget {
  const SelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SelectionPage'),
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
            title: (CheckboxExample).name,
            onTap: () {
              context.pushRelative((CheckboxExample).name);
            },
          ),
          MyCardWidget(
            title: (ChipExample).name,
            onTap: () {
              context.pushRelative((ChipExample).name);
            },
          ),
          MyCardWidget(
            title: (DatePickerExample).name,
            onTap: () {
              context.pushRelative((DatePickerExample).name);
            },
          ),
          MyCardWidget(
            title: (PopupMenuExample).name,
            onTap: () {
              context.pushRelative((PopupMenuExample).name);
            },
          ),
          MyCardWidget(
            title: (RadioButtonExample).name,
            onTap: () {
              context.pushRelative((RadioButtonExample).name);
            },
          ),
          MyCardWidget(
            title: (SliderExample).name,
            onTap: () {
              context.pushRelative((SliderExample).name);
            },
          ),
          MyCardWidget(
            title: (SwitchExample).name,
            onTap: () {
              context.pushRelative((SwitchExample).name);
            },
          ),
          MyCardWidget(
            title: (TimePickerExample).name,
            onTap: () {
              context.pushRelative((TimePickerExample).name);
            },
          ),
        ],
      ),
    );
  }
}
