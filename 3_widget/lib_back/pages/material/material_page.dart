import 'package:flutter/material.dart';
import '../../../lib_back/extensions.dart';
import '../../../lib_back/main.dart';

import 'actions/actions.dart';
import 'communication/communication.dart';
import 'containment/containment.dart';
import 'navigation/navigation.dart';
import 'selection/selection.dart';
import 'text_inputs/text_inputs.dart';

class MaterialComponentsPage extends StatelessWidget {
  const MaterialComponentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('머티리얼'),
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
            title: '동작',
            onTap: () {
              context.pushRelative((ActionsPage).name);
            },
          ),
          MyCardWidget(
            title: '소통',
            onTap: () {
              context.pushRelative((CommunicationPage).name);
            },
          ),
          MyCardWidget(
            title: '방지',
            onTap: () {
              context.pushRelative((ContainmentPage).name);
            },
          ),
          MyCardWidget(
            title: '안내',
            onTap: () {
              context.pushRelative((NavigationPage).name);
            },
          ),
          MyCardWidget(
            title: '선택',
            onTap: () {
              context.pushRelative((SelectionPage).name);
            },
          ),
          MyCardWidget(
            title: '텍스트 입력',
            onTap: () {
              context.pushRelative((TextInpusPage).name);
            },
          ),
        ],
      ),
    );
  }
}
