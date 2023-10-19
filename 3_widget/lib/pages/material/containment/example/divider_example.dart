import 'package:flutter/material.dart';

class DividerExample extends StatelessWidget {
  const DividerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DividerExample'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Expanded(
              child: ColoredBox(
                color: Colors.amber,
                child: Center(
                  child: Text('Above'),
                ),
              ),
            ),
            const Divider(
              height: 20,
              thickness: 5,
              indent: 20,
              endIndent: 0,
              color: Colors.black,
            ),
            // Subheader example from Material spec.
            // https://material.io/components/dividers#types
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  'Subheader',
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Expanded(
              child: ColoredBox(
                color: Theme.of(context).colorScheme.primary,
                child: const Center(
                  child: Text('Below'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
