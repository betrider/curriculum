import 'package:flutter/cupertino.dart';

class CupertinoNavigationBarExample extends StatefulWidget {
  const CupertinoNavigationBarExample({super.key});

  @override
  State<CupertinoNavigationBarExample> createState() => _CupertinoNavigationBarExampleState();
}

class _CupertinoNavigationBarExampleState extends State<CupertinoNavigationBarExample> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        // Try removing opacity to observe the lack of a blur effect and of sliding content.
        backgroundColor: CupertinoColors.systemGrey.withOpacity(0.5),
        middle: const Text('CupertinoNavigationBar Sample'),
      ),
      child: Column(
        children: <Widget>[
          Container(height: 50, color: CupertinoColors.systemRed),
          Container(height: 50, color: CupertinoColors.systemGreen),
          Container(height: 50, color: CupertinoColors.systemBlue),
          Container(height: 50, color: CupertinoColors.systemYellow),
        ],
      ),
    );
  }
}