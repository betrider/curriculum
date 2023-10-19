// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DidChangeDependenciesExample extends StatefulWidget {
  const DidChangeDependenciesExample({super.key, required this.title});

  final String title;

  @override
  ParentWidgetState createState() => ParentWidgetState();
}

class ParentWidgetState extends State<DidChangeDependenciesExample> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Provider.value(
        value: _counter,
        updateShouldNotify: (oldValue, newValue) => true,
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Press Fab button to increase counter:',
              ),
              ChildWidget()
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ChildWidget extends StatefulWidget {
  const ChildWidget({super.key});

  @override
  ChildWidgetState createState() => ChildWidgetState();
}

class ChildWidgetState extends State<ChildWidget> {
  int _counter = 0;

  @override
  void initState() {
    print('initState(), counter = $_counter');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _counter = Provider.of<int>(context);
    print('didChangeDependencies(), counter = $_counter');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('build(), counter = $_counter');
    return Text(
      '$_counter',
    );
  }
}
