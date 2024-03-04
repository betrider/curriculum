import 'package:flutter/material.dart';
import '../../../lib_back/extensions.dart';
import '../../../lib_back/main.dart';

import 'assets_images_and_icons.dart';

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
            title: (AssetBundleExample).name,
            onTap: () {
              context.pushRelative((AssetBundleExample).name);
            },
          ),
          MyCardWidget(
            title: (IconExample).name,
            onTap: () {
              context.pushRelative((IconExample).name);
            },
          ),
          MyCardWidget(
            title: (ImageExample).name,
            onTap: () {
              context.pushRelative((ImageExample).name);
            },
          ),
          MyCardWidget(
            title: (RawImageExample).name,
            onTap: () {
              context.pushRelative((RawImageExample).name);
            },
          ),
        ],
      ),
    );
  }
}