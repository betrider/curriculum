import 'package:flutter/material.dart';
import '../../../lib_back/extensions.dart';
import '../../../lib_back/main.dart';

class OthersPage extends StatelessWidget {
  const OthersPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('기타'),
        centerTitle: true,
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(4),
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        crossAxisCount: 2,
        children: [
          MyCardWidget(
            title: (WidgetExample1).name,
            onTap: () {
              context.pushRelative((WidgetExample1).name);
            },
          ),
          MyCardWidget(
            title: (WidgetExample2).name,
            onTap: () {
              context.pushRelative((WidgetExample2).name);
            },
          ),
          MyCardWidget(
            title: (WidgetExample3).name,
            onTap: () {
              context.pushRelative((WidgetExample3).name);
            },
          ),
        ],
      ),
    );
  }
}

class WidgetExample1 extends StatelessWidget {
  const WidgetExample1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
class WidgetExample2 extends StatelessWidget {
  const WidgetExample2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
class WidgetExample3 extends StatelessWidget {
  const WidgetExample3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}