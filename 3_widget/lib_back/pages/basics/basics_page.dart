import 'package:flutter/material.dart';
import '../../../lib_back/extensions.dart';
import '../../../lib_back/main.dart';

import 'basics.dart';

class BasicsPage extends StatelessWidget {
  const BasicsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('기초'),
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
            title: (AppBarExample).name,
            onTap: () {
              context.pushRelative((AppBarExample).name);
            },
          ),
          MyCardWidget(
            title: (ColumnExample).name,
            onTap: () {
              context.pushRelative((ColumnExample).name);
            },
          ),
          MyCardWidget(
            title: (ContainerExample).name,
            onTap: () {
              context.pushRelative((ContainerExample).name);
            },
          ),
          MyCardWidget(
            title: (ElevatedButtonExample).name,
            onTap: () {
              context.pushRelative((ElevatedButtonExample).name);
            },
          ),
          MyCardWidget(
            title: (FlutterLogoExample).name,
            onTap: () {
              context.pushRelative((FlutterLogoExample).name);
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
            title: (OutlinedButtonExample).name,
            onTap: () {
              context.pushRelative((OutlinedButtonExample).name);
            },
          ),
          MyCardWidget(
            title: (PlaceholderExample).name,
            onTap: () {
              context.pushRelative((PlaceholderExample).name);
            },
          ),
          MyCardWidget(
            title: (RowExample).name,
            onTap: () {
              context.pushRelative((RowExample).name);
            },
          ),
          MyCardWidget(
            title: (ScaffoldExample).name,
            onTap: () {
              context.pushRelative((ScaffoldExample).name);
            },
          ),
          MyCardWidget(
            title: (TextButtonExample).name,
            onTap: () {
              context.pushRelative((TextButtonExample).name);
            },
          ),
          MyCardWidget(
            title: (TextExample).name,
            onTap: () {
              context.pushRelative((TextExample).name);
            },
          ),
        ],
      ),
    );
  }
}
