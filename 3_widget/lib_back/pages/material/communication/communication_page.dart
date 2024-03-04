import 'package:flutter/material.dart';
import '../../../../lib_back/extensions.dart';
import '../../../../lib_back/main.dart';

import 'communication.dart';

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
            title: (BadgeExample).name,
            onTap: () {
              context.pushRelative((BadgeExample).name,);
            },
          ),
          MyCardWidget(
            title: (ProgressIndicatorExample).name,
            onTap: () {
              context.pushRelative((ProgressIndicatorExample).name,);
            },
          ),
          MyCardWidget(
            title: (SnackBarExample).name,
            onTap: () {
              context.pushRelative((SnackBarExample).name,);
            },
          ),
        ],
      ),
    );
  }
}
