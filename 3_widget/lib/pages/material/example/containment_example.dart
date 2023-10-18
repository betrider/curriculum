import 'package:flutter/material.dart';
import 'package:flutter_widget/context_extension.dart';
import 'package:flutter_widget/main.dart';

class ContainmentExample extends StatelessWidget {
  const ContainmentExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ActionsExample'),
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
            title: 'Actions',
            onTap: () {
              context.pushRelative('Actions');
            },
          ),
          MyCardWidget(
            title: 'Actions',
            onTap: () {
              context.pushRelative('Actions');
            },
          ),
          MyCardWidget(
            title: 'Actions',
            onTap: () {
              context.pushRelative('Actions');
            },
          ),
          MyCardWidget(
            title: 'Actions',
            onTap: () {
              context.pushRelative('Actions');
            },
          ),
        ],
      ),
    );
  }
}
