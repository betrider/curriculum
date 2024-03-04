import 'package:flutter/cupertino.dart';

class CupertinoPageScaffoldExample extends StatefulWidget {
  const CupertinoPageScaffoldExample({super.key});

  @override
  State<CupertinoPageScaffoldExample> createState() => _CupertinoPageScaffoldExampleState();
}

class _CupertinoPageScaffoldExampleState extends State<CupertinoPageScaffoldExample> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      // Uncomment to change the background color
      // backgroundColor: CupertinoColors.systemPink,
      navigationBar: const CupertinoNavigationBar(
        middle: Text('CupertinoPageScaffold Sample'),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text('You have pressed the button $_count times.'),
            ),
            const SizedBox(height: 20.0),
            Center(
              child: CupertinoButton.filled(
                onPressed: () => setState(() => _count++),
                child: const Icon(CupertinoIcons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}