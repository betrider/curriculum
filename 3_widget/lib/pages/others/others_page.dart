import 'package:flutter/material.dart';
import 'package:flutter_widget/extensions.dart';
import 'package:flutter_widget/main.dart';

class OthersPage extends StatelessWidget {
  const OthersPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('기타'),
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
            title: 'WidgetExample1',
            onTap: () {
              context.pushRelative('WidgetExample1');
            },
          ),
          MyCardWidget(
            title: 'WidgetExample2',
            onTap: () {
              context.pushRelative('WidgetExample2');
            },
          ),
          MyCardWidget(
            title: 'WidgetExample3',
            onTap: () {
              context.pushRelative('WidgetExample3');
            },
          ),
        ],
      ),
    );
  }
}
