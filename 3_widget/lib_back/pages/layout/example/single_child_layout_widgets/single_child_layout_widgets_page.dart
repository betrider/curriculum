import 'package:flutter/material.dart';
import '../../../../../lib_back/extensions.dart';
import '../../../../../lib_back/main.dart';

import 'single_child_layout_widgets.dart';

class SingleChildLayoutWidgetsPage extends StatelessWidget {
  const SingleChildLayoutWidgetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('단일 위젯'),
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
            title: (AlignExample).name,
            onTap: () {
              context.pushRelative((AlignExample).name);
            },
          ),
          MyCardWidget(
            title: (AspectRatioExample).name,
            onTap: () {
              context.pushRelative((AspectRatioExample).name);
            },
          ),
          MyCardWidget(
            title: (BaselineExample).name,
            onTap: () {
              context.pushRelative((BaselineExample).name);
            },
          ),
          MyCardWidget(
            title: (CenterExample).name,
            onTap: () {
              context.pushRelative((CenterExample).name);
            },
          ),
          MyCardWidget(
            title: (ConstrainedBoxExample).name,
            onTap: () {
              context.pushRelative((ConstrainedBoxExample).name);
            },
          ),
          MyCardWidget(
            title: (ContainerExample).name,
            onTap: () {
              context.pushRelative((ContainerExample).name);
            },
          ),
          MyCardWidget(
            title: (CustomSingleChildLayoutExample).name,
            onTap: () {
              context.pushRelative((CustomSingleChildLayoutExample).name);
            },
          ),
          MyCardWidget(
            title: (ExpandedExample).name,
            onTap: () {
              context.pushRelative((ExpandedExample).name);
            },
          ),
          MyCardWidget(
            title: (FittedBoxExample).name,
            onTap: () {
              context.pushRelative((FittedBoxExample).name);
            },
          ),
          MyCardWidget(
            title: (FractionallySizedBoxExample).name,
            onTap: () {
              context.pushRelative((FractionallySizedBoxExample).name);
            },
          ),
          MyCardWidget(
            title: (IntrinsicHeightExample).name,
            onTap: () {
              context.pushRelative((IntrinsicHeightExample).name);
            },
          ),
          MyCardWidget(
            title: (IntrinsicWidthExample).name,
            onTap: () {
              context.pushRelative((IntrinsicWidthExample).name);
            },
          ),
          MyCardWidget(
            title: (LimitedBoxExample).name,
            onTap: () {
              context.pushRelative((LimitedBoxExample).name);
            },
          ),
          MyCardWidget(
            title: (OverflowBoxExample).name,
            onTap: () {
              context.pushRelative((OverflowBoxExample).name);
            },
          ),
          MyCardWidget(
            title: (PaddingExample).name,
            onTap: () {
              context.pushRelative((PaddingExample).name);
            },
          ),
          MyCardWidget(
            title: (SizedBoxExample).name,
            onTap: () {
              context.pushRelative((SizedBoxExample).name);
            },
          ),
          MyCardWidget(
            title: (SizedOverflowBoxExample).name,
            onTap: () {
              context.pushRelative((SizedOverflowBoxExample).name);
            },
          ),
          MyCardWidget(
            title: (TransformExample).name,
            onTap: () {
              context.pushRelative((TransformExample).name);
            },
          ),
        ],
      ),
    );
  }
}
