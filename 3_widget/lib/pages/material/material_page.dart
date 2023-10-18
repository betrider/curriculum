import 'package:flutter/material.dart';
import 'package:flutter_widget/context_extension.dart';
import 'package:flutter_widget/main.dart';

class MaterialComponentsPage extends StatelessWidget {
  const MaterialComponentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Material Components widgets')),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(4),
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        crossAxisCount: 2,
        children: [
          MyCardWidget(
            title: 'ActionsExample',
            onTap: () {
              context.pushRelative('ActionsExample');
            },
          ),
          MyCardWidget(
            title: 'CommunicationExample',
            onTap: () {
              context.pushRelative('CommunicationExample');
            },
          ),
          MyCardWidget(
            title: 'ContainmentExample',
            onTap: () {
              context.pushRelative('ContainmentExample');
            },
          ),
          MyCardWidget(
            title: 'NavigationExample',
            onTap: () {
              context.pushRelative('NavigationExample');
            },
          ),
          MyCardWidget(
            title: 'SelectionExample',
            onTap: () {
              context.pushRelative('SelectionExample');
            },
          ),
          MyCardWidget(
            title: 'TextInpusExample',
            onTap: () {
              context.pushRelative('TextInpusExample');
            },
          ),
        ],
      ),
    );
  }
}