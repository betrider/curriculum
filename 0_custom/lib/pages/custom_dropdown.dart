import 'dart:developer';

import 'package:flutter/material.dart';

class CustomDropDownPage extends StatelessWidget {
  const CustomDropDownPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomDropDownPage'),
      ),
      body: Center(
        child: CustomDropDown(
          items: const {
            1: '공간1',
            2: '공간2',
            3: '공간3',
          },
          initialKey: 2,
          onChanged: (key, value) {
            log('key : $key, value : $value');
          },
        ),
      ),
    );
  }
}

class CustomDropDown extends StatefulWidget {
  /// 아이템 목록
  ///
  /// items : {1: '공간1', 2: '공간2', 3: '공간3'},
  ///
  /// items : ['공간1', '공간2', '공간3'].asMap(),
  final Map<int, String> items;

  /// 아이템 목록 중 초기 선택된 아이템의 키
  final int? initialKey;

  /// 아이템 선택 시 호출되는 콜백 함수
  final Function(int key, String value) onChanged;

  /// 드롭다운 박스의 너비
  final double width;

  /// 드롭다운 박스의 높이
  final double height;

  const CustomDropDown({
    super.key,
    required this.items,
    this.initialKey,
    required this.onChanged,
    this.width = 200,
    this.height = 40,
  });

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  LayerLink layerLink = LayerLink();
  late OverlayEntry dropdownBox;
  late int currentKey;

  @override
  void initState() {
    super.initState();
    currentKey = widget.initialKey ?? (widget.items.isEmpty ? 0 : widget.items.keys.first);
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: layerLink,
      child: LayoutBuilder(
        builder: (context, constraints) => Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              _showDropdown(constraints);
            },
            child: Container(
              width: widget.width,
              height: widget.height,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey[200]!),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.items[currentKey].toString(),
                    style: const TextStyle(fontSize: 14),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.grey[400]!,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// 드롭다운 박스를 보여주는 함수
  void _showDropdown(BoxConstraints constraints) {
    dropdownBox = OverlayEntry(
      builder: (context) => Stack(
        children: [
          GestureDetector(
            onTap: _hideDropdown,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.transparent,
            ),
          ),
          CompositedTransformFollower(
            offset: const Offset(0, 2),
            targetAnchor: Alignment.bottomLeft,
            link: layerLink,
            child: Material(
              color: Colors.white,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: layerLink.leaderSize!.width,
                  maxHeight: 182,
                ),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey[200]!),
                  ),
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: widget.items.length,
                    itemBuilder: (context, index) {
                      BorderRadius? borderRadius;
                      if (index == 0) {
                        borderRadius = const BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                        );
                      } else if (index == widget.items.length - 1) {
                        borderRadius = const BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        );
                      }

                      return InkWell(
                        borderRadius: borderRadius,
                        onTap: () {
                          setState(() {
                            currentKey = widget.items.keys.elementAt(index);
                          });
                          widget.onChanged(widget.items.keys.elementAt(index), widget.items.values.elementAt(index));
                          _hideDropdown();
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          child: Text(
                            widget.items.values.elementAt(index),
                            style: TextStyle(
                              color: currentKey == widget.items.keys.elementAt(index) ? Colors.blueGrey : Colors.black,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
    Navigator.of(context).overlay?.insert(dropdownBox);
  }

  /// 드롭다운 박스를 숨기는 함수
  void _hideDropdown() {
    dropdownBox.remove();
  }
}
