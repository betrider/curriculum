// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class StatefulWidgetExample extends StatefulWidget {
  const StatefulWidgetExample({super.key});

  @override
  State<StatefulWidgetExample> createState() => _StatefulWidgetExampleState();
}

class _StatefulWidgetExampleState extends State<StatefulWidgetExample> {
  // context.mounted -> true

  @override
  void initState() {
    super.initState();
    print('1.initState : ${context.mounted}');
  }

  // didChangeDependencies에서 BuildContext.inheritFromWidgetOfExactType 사용(상태관리)
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('2.didChangeDependencies : ${context.mounted}');
  }

  @override
  Widget build(BuildContext context) {
    print('3.build');
    return Scaffold(
      appBar: AppBar(title: const Text('StatefulWidgetExample')),
      body: const Placeholder(),
    );
  }

  @override
  void didUpdateWidget(covariant StatefulWidgetExample oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('4.didUpdateWidget');
  }

  @override
  void dispose() {
    print('5.dispose');
    super.dispose();
  }

  // context.mounted -> false
}
