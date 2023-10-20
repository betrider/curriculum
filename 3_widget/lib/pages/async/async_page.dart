import 'package:flutter/material.dart';
import 'package:flutter_widget/extensions.dart';
import 'package:flutter_widget/main.dart';

import 'async.dart';

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
            title: (FutureBuilderExample).name,
            onTap: () {
              context.pushRelative((FutureBuilderExample).name);
            },
          ),
          MyCardWidget(
            title: (StreamBuilderExample).name,
            onTap: () {
              context.pushRelative((StreamBuilderExample).name);
            },
          ),
        ],
      ),
    );
  }
}