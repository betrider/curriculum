import 'package:flutter/material.dart';
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
            title: 'Actions',
            onTap: () {
              // ...
            },
          ),
          MyCardWidget(
            title: 'Communication',
            onTap: () {
              // ...
            },
          ),
          MyCardWidget(
            title: 'Containment',
            onTap: () {
              // ...
            },
          ),
          MyCardWidget(
            title: 'Navigation',
            onTap: () {
              // ...
            },
          ),
          MyCardWidget(
            title: 'Selection',
            onTap: () {
              // ...
            },
          ),
          MyCardWidget(
            title: 'Text Inputs',
            onTap: () {
              // ...
            },
          ),
        ],
      ),
    );
  }
}