import 'package:flutter/material.dart';

GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

class AnimatedListStateExample extends StatelessWidget {
  const AnimatedListStateExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedListStateExample')),
      body: AnimatedList(
        key: listKey,
        itemBuilder: (BuildContext context, int index, Animation<double> animation) {
          return const Placeholder();
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  void updateList() {
    // adds "123" to the AnimatedList
    listKey.currentState!.insertItem(123);
  }
}
