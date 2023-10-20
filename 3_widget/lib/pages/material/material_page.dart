import 'package:flutter/material.dart';
import 'package:flutter_widget/extensions.dart';
import 'package:flutter_widget/main.dart';

class MaterialComponentsPage extends StatelessWidget {
  const MaterialComponentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('머티리얼'),
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
            title: 'Communication',
            onTap: () {
              context.pushRelative('Communication');
            },
          ),
          MyCardWidget(
            title: 'Containment',
            onTap: () {
              context.pushRelative('Containment');
            },
          ),
          MyCardWidget(
            title: 'Navigation',
            onTap: () {
              context.pushRelative('Navigation');
            },
          ),
          MyCardWidget(
            title: 'Selection',
            onTap: () {
              context.pushRelative('Selection');
            },
          ),
          MyCardWidget(
            title: 'TextInpus',
            onTap: () {
              context.pushRelative('TextInpus');
            },
          ),
        ],
      ),
    );
  }
}
