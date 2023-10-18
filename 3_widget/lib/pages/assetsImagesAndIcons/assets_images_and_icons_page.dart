import 'package:flutter/material.dart';
import 'package:flutter_widget/context_extension.dart';
import 'package:flutter_widget/main.dart';

class AssetsImagesAndIconsPage extends StatelessWidget {
  const AssetsImagesAndIconsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('자산'),
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
            title: 'AssetBundleExample',
            onTap: () {
              context.pushRelative('AssetBundleExample');
            },
          ),
          MyCardWidget(
            title: 'IconExample',
            onTap: () {
              context.pushRelative('IconExample');
            },
          ),
          MyCardWidget(
            title: 'ImageExample',
            onTap: () {
              context.pushRelative('ImageExample');
            },
          ),
          MyCardWidget(
            title: 'RawImageExample',
            onTap: () {
              context.pushRelative('RawImageExample');
            },
          ),
        ],
      ),
    );
  }
}