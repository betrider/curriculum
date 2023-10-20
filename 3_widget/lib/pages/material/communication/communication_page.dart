import 'package:flutter/material.dart';
import 'package:flutter_widget/extensions.dart';
import 'package:flutter_widget/main.dart';

class CommunicationPage extends StatelessWidget {
  const CommunicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CommunicationPage'),
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
            title: 'BadgeExample',
            onTap: () {
              context.pushRelative('BadgeExample');
            },
          ),
          MyCardWidget(
            title: 'ProgressIndicatorExample',
            onTap: () {
              context.pushRelative('ProgressIndicatorExample');
            },
          ),
          MyCardWidget(
            title: 'SnackbarExample',
            onTap: () {
              context.pushRelative('SnackbarExample');
            },
          ),
        ],
      ),
    );
  }
}
