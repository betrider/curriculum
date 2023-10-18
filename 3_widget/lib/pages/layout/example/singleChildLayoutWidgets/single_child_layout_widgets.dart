import 'package:flutter/material.dart';
import 'package:flutter_widget/context_extension.dart';
import 'package:flutter_widget/main.dart';

class SingleChildLayoutWidgets extends StatelessWidget {
  const SingleChildLayoutWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SingleChildLayoutWidgets'),
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
            title: 'AlignExample',
            onTap: () {
              context.pushRelative('AlignExample');
            },
          ),
          MyCardWidget(
            title: 'AspectRatioExample',
            onTap: () {
              context.pushRelative('AspectRatioExample');
            },
          ),
          MyCardWidget(
            title: 'BaselineExample',
            onTap: () {
              context.pushRelative('BaselineExample');
            },
          ),
          MyCardWidget(
            title: 'CenterExample',
            onTap: () {
              context.pushRelative('CenterExample');
            },
          ),
          MyCardWidget(
            title: 'ConstrainedBoxExample',
            onTap: () {
              context.pushRelative('ConstrainedBoxExample');
            },
          ),
          MyCardWidget(
            title: 'ContainerExample',
            onTap: () {
              context.pushRelative('ContainerExample');
            },
          ),
          MyCardWidget(
            title: 'CustomSingleChildLayoutExample',
            onTap: () {
              context.pushRelative('CustomSingleChildLayoutExample');
            },
          ),
          MyCardWidget(
            title: 'ExpandedExample',
            onTap: () {
              context.pushRelative('ExpandedExample');
            },
          ),
          MyCardWidget(
            title: 'FittedBoxExample',
            onTap: () {
              context.pushRelative('FittedBoxExample');
            },
          ),
          MyCardWidget(
            title: 'FractionallySizedBoxExample',
            onTap: () {
              context.pushRelative('FractionallySizedBoxExample');
            },
          ),
          MyCardWidget(
            title: 'IntrinsicHeightExample',
            onTap: () {
              context.pushRelative('IntrinsicHeightExample');
            },
          ),
          MyCardWidget(
            title: 'IntrinsicWidthExample',
            onTap: () {
              context.pushRelative('IntrinsicWidthExample');
            },
          ),
          MyCardWidget(
            title: 'LimitedBoxExample',
            onTap: () {
              context.pushRelative('LimitedBoxExample');
            },
          ),
          MyCardWidget(
            title: 'OverflowBoxExample',
            onTap: () {
              context.pushRelative('OverflowBoxExample');
            },
          ),
          MyCardWidget(
            title: 'PaddingExample',
            onTap: () {
              context.pushRelative('PaddingExample');
            },
          ),
          MyCardWidget(
            title: 'SizedBoxExample',
            onTap: () {
              context.pushRelative('SizedBoxExample');
            },
          ),
          MyCardWidget(
            title: 'SizedOverflowBoxExample',
            onTap: () {
              context.pushRelative('SizedOverflowBoxExample');
            },
          ),
          MyCardWidget(
            title: 'TransformExample',
            onTap: () {
              context.pushRelative('TransformExample');
            },
          ),
        ],
      ),
    );
  }
}
