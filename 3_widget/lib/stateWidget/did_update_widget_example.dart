import 'package:flutter/material.dart';

class DidUpdateWidgetExample extends StatefulWidget {
  const DidUpdateWidgetExample({
    super.key,
    required this.duration,
  });

  final Duration duration;

  @override
  State<DidUpdateWidgetExample> createState() => _DidUpdateWidgetExampleState();
}

class _DidUpdateWidgetExampleState extends State<DidUpdateWidgetExample> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this, // the SingleTickerProviderStateMixin
      duration: widget.duration,
    );
  }

  @override
  void didUpdateWidget(DidUpdateWidgetExample oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.duration = widget.duration;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DidUpdateWidgetExample')),
      body: Container(),
    ); // ...
  }
}
