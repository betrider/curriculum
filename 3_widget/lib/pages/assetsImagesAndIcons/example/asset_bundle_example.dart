import 'package:flutter/material.dart';

class AssetBundleExample extends StatelessWidget {
  const AssetBundleExample({super.key});

  @override
  Widget build(BuildContext context) {
    // var bundle = DefaultAssetBundle.of(context);
    // bundle.loadString('asset/configure.json');

    return Scaffold(
      appBar: AppBar(
        title: const Text('AssetBundleExample'),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(image: AssetImage('assets/images/hamilton.jpeg')),
          ],
        ),
      ),
    );
  }
}
