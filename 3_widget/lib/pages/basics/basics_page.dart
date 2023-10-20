import 'package:flutter/material.dart';
import 'package:flutter_widget/extensions.dart';
import 'package:flutter_widget/main.dart';

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
            title: 'AppBarExample',
            onTap: () {
              context.pushRelative('AppBarExample');
            },
          ),
          MyCardWidget(
            title: 'ColumnExample',
            onTap: () {
              context.pushRelative('ColumnExample');
            },
          ),
          MyCardWidget(
            title: 'ContainerExample',
            onTap: () {
              context.pushRelative('ContainerExample');
            },
          ),
          MyCardWidget(
            title: 'ElevatedButtonExample',
            onTap: () {
              context.pushRelative('ElevatedButtonExample');
            },
          ),
          MyCardWidget(
            title: 'FlutterLogoExample',
            onTap: () {
              context.pushRelative('FlutterLogoExample');
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
            title: 'OutlinedButtonExample',
            onTap: () {
              context.pushRelative('OutlinedButtonExample');
            },
          ),
          MyCardWidget(
            title: 'PlaceholderExample',
            onTap: () {
              context.pushRelative('PlaceholderExample');
            },
          ),
          MyCardWidget(
            title: 'RowExample',
            onTap: () {
              context.pushRelative('RowExample');
            },
          ),
          MyCardWidget(
            title: 'ScaffoldExample',
            onTap: () {
              context.pushRelative('ScaffoldExample');
            },
          ),
          MyCardWidget(
            title: 'TextButtonExample',
            onTap: () {
              context.pushRelative('TextButtonExample');
            },
          ),
          MyCardWidget(
            title: 'TextExample',
            onTap: () {
              context.pushRelative('TextExample');
            },
          ),
        ],
      ),
    );
  }
}
