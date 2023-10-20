import 'package:flutter/material.dart';
import 'package:flutter_widget/extensions.dart';
import 'package:flutter_widget/main.dart';

import 'input.dart';

class InputPage extends StatelessWidget {
  const InputPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('입력'),
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
            title: (AutocompleteExample).name,
            onTap: () {
              context.pushRelative((AutocompleteExample).name);
            },
          ),
          MyCardWidget(
            title: (FormExample).name,
            onTap: () {
              context.pushRelative((FormExample).name);
            },
          ),
          MyCardWidget(
            title: (FormFieldExample).name,
            onTap: () {
              context.pushRelative((FormFieldExample).name);
            },
          ),
          MyCardWidget(
            title: (RawKeyboardListenerExample).name,
            onTap: () {
              context.pushRelative((RawKeyboardListenerExample).name);
            },
          ),
        ],
      ),
    );
  }
}