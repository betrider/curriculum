import 'package:flutter/material.dart';
import 'package:flutter_widget/context_extension.dart';
import 'package:flutter_widget/main.dart';

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
            title: 'AutocompleteBasicExample',
            onTap: () {
              context.pushRelative('AutocompleteBasicExample');
            },
          ),
          MyCardWidget(
            title: 'FormExample',
            onTap: () {
              context.pushRelative('FormExample');
            },
          ),
          MyCardWidget(
            title: 'FormFieldExample',
            onTap: () {
              context.pushRelative('FormFieldExample');
            },
          ),
          MyCardWidget(
            title: 'KeyboardListenerExample',
            onTap: () {
              context.pushRelative('KeyboardListenerExample');
            },
          ),
        ],
      ),
    );
  }
}