import 'package:flutter/material.dart';
import 'package:flutter_widget/extensions.dart';
import 'package:flutter_widget/main.dart';

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
            title: 'CheckboxExample',
            onTap: () {
              context.pushRelative('CheckboxExample');
            },
          ),
          MyCardWidget(
            title: 'ChipExample',
            onTap: () {
              context.pushRelative('ChipExample');
            },
          ),
          MyCardWidget(
            title: 'DatePickerExample',
            onTap: () {
              context.pushRelative('DatePickerExample');
            },
          ),
          MyCardWidget(
            title: 'PopupMenuExample',
            onTap: () {
              context.pushRelative('PopupMenuExample');
            },
          ),
          MyCardWidget(
            title: 'RadioButtonExample',
            onTap: () {
              context.pushRelative('RadioButtonExample');
            },
          ),
          MyCardWidget(
            title: 'SliderExample',
            onTap: () {
              context.pushRelative('SliderExample');
            },
          ),
          MyCardWidget(
            title: 'SwitchExample',
            onTap: () {
              context.pushRelative('SwitchExample');
            },
          ),
          MyCardWidget(
            title: 'TimePickerExample',
            onTap: () {
              context.pushRelative('TimePickerExample');
            },
          ),
        ],
      ),
    );
  }
}
