import 'package:flutter/cupertino.dart';

class CupertinoSearchTextFieldExample extends StatefulWidget {
  const CupertinoSearchTextFieldExample({super.key});

  @override
  State<CupertinoSearchTextFieldExample> createState() => _CupertinoSearchTextFieldExampleState();
}

class _CupertinoSearchTextFieldExampleState extends State<CupertinoSearchTextFieldExample> {
  late TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController(text: 'initial text');
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('CupertinoSearchTextField Sample'),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CupertinoSearchTextField(
            controller: textController,
            placeholder: 'Search',
          ),
        ),
      ),
    );
  }
}