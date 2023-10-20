import 'package:flutter/material.dart';
import 'package:flutter_widget/extensions.dart';
import 'package:flutter_widget/main.dart';

class AsyncPage extends StatelessWidget {
  const AsyncPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('비동기'),
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
            title: 'FutureBuilderExample',
            onTap: () {
              context.pushRelative('FutureBuilderExample');
            },
          ),
          MyCardWidget(
            title: 'StreamBuilderExample',
            onTap: () {
              context.pushRelative('StreamBuilderExample');
            },
          ),
        ],
      ),
    );
  }
}