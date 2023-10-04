import 'package:flutter/material.dart';

/// 머티리얼 디자인 스크롤바. 스크롤바는 스크롤 가능 위젯의 어느 부분이 실제로 표시되는지를 나타냅니다.
class ScrollbarExample extends StatefulWidget {
  const ScrollbarExample({super.key});

  @override
  State<ScrollbarExample> createState() => _ScrollbarExampleState();
}

class _ScrollbarExampleState extends State<ScrollbarExample> {
  final ScrollController _firstController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ScrollbarExample')),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Row(
            children: <Widget>[
              SizedBox(
                  width: constraints.maxWidth / 2,
                  // When using the PrimaryScrollController and a Scrollbar
                  // together, only one ScrollPosition can be attached to the
                  // PrimaryScrollController at a time. Providing a
                  // unique scroll controller to this scroll view prevents it
                  // from attaching to the PrimaryScrollController.
                  child: Scrollbar(
                    thumbVisibility: true,
                    controller: _firstController,
                    child: ListView.builder(
                        controller: _firstController,
                        itemCount: 100,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Scrollable 1 : Index $index'),
                          );
                        }),
                  )),
              SizedBox(
                width: constraints.maxWidth / 2,
                // This vertical scroll view has primary set to true, so it is
                // using the PrimaryScrollController. On mobile platforms, the
                // PrimaryScrollController automatically attaches to vertical
                // ScrollViews, unlike on Desktop platforms, where the primary
                // parameter is required.
                child: Scrollbar(
                  thumbVisibility: true,
                  child: ListView.builder(
                      primary: true,
                      itemCount: 100,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 50,
                          color: index.isEven ? Colors.amberAccent : Colors.blueAccent,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Scrollable 2 : Index $index'),
                          ),
                        );
                      }),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
