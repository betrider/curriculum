import 'package:flutter/material.dart';

class ScaffoldSample extends StatelessWidget {
  const ScaffoldSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        leading: Tooltip(
          message: 'leading',
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_circle_left_outlined),
          ),
        ),
        title: const Text('appBar'),
        centerTitle: true,
        actions: [
          Tooltip(
            message: 'actions',
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
            ),
          ),
          const SizedBox(width: 8)
        ],
      ),
      body: const Center(
        child: Text('body'),
      ),
      bottomNavigationBar: const BottomAppBar(
        child: SizedBox(
          height: 50.0,
          child: Center(
            child: Text('bottomNavigationBar'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'FloatingActionButton',
        child: const Icon(Icons.add),
      ),
    );
  }
}
