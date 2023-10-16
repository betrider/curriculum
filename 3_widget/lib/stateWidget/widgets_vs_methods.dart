import 'package:flutter/material.dart';

class WidgetsVSMethods extends StatefulWidget {
  const WidgetsVSMethods({super.key});

  @override
  State<WidgetsVSMethods> createState() => _WidgetsVSMethodsState();
}

class _WidgetsVSMethodsState extends State<WidgetsVSMethods> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('WidgetsVSMethods')),
      body: Column(
        children: [
          Text(count.toString()),
          childWidget(),
          // ignore: prefer_const_constructors
          ChildWidget(),
          const ChildWidget(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count += 1;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ChildWidget extends StatelessWidget {
  const ChildWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('child widget');
  }
}

Widget childWidget() {
  return const Text('child method');
}
