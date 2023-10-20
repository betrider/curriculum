import 'package:flutter/cupertino.dart';

class CupertinoListTileExample extends StatelessWidget {
  const CupertinoListTileExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoScrollbar(
        child: ListView(
          children: [
            CupertinoListTile(
              title: const Text('One-line'),
              onTap: () {},
            ),
            CupertinoListTile(
              title: const Text('One-line with leading widget'),
              onTap: () {},
            ),
            CupertinoListTile(
              title: const Text('One-line with trailing widget'),
              onTap: () {},
            ),
            CupertinoListTile(
              title: const Text('One-line with both widgets'),
              onTap: () {},
            ),
            CupertinoListTile(
              title: const Text('Two-line'),
              onTap: () {},
            ),
            CupertinoListTile(
              title: const Text('Three-line'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
