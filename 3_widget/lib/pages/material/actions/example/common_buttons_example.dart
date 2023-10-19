import 'package:flutter/material.dart';

class CommonButtonsExample extends StatelessWidget {
  const CommonButtonsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CommonButtonsExample'),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(4.0),
        child: Row(
          children: <Widget>[
            Spacer(),
            ButtonTypesGroup(enabled: true),
            ButtonTypesGroup(enabled: false),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class ButtonTypesGroup extends StatelessWidget {
  const ButtonTypesGroup({super.key, required this.enabled});

  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final VoidCallback? onPressed = enabled ? () {} : null;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ElevatedButton(onPressed: onPressed, child: const Text('Elevated')),
          FilledButton(onPressed: onPressed, child: const Text('Filled')),
          FilledButton.tonal(
              onPressed: onPressed, child: const Text('Filled Tonal')),
          OutlinedButton(onPressed: onPressed, child: const Text('Outlined')),
          TextButton(onPressed: onPressed, child: const Text('Text')),
        ],
      ),
    );
  }
}