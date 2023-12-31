import 'package:flutter/material.dart';
import 'package:flutter_widget/extensions.dart';
import 'package:flutter_widget/main.dart';

import 'text_inputs.dart';

class TextInpusPage extends StatelessWidget {
  const TextInpusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextInpusPage'),
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
            title: (TextFieldExample).name,
            onTap: () {
              context.pushRelative((TextFieldExample).name);
            },
          ),
        ],
      ),
    );
  }
}
