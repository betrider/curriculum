import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class LongPressDraggableExample extends StatefulWidget {
  const LongPressDraggableExample({Key? key}) : super(key: key);
  @override
  State<LongPressDraggableExample> createState() => _LongPressDraggableExampleState();
}

class _LongPressDraggableExampleState extends State<LongPressDraggableExample> {
  @override
  Widget build(BuildContext context) {
    bool isDropped = false;
    String color = "red";
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LongPressDraggable<String>(
              // Data is the value this Draggable stores.
              data: color,
              feedback: Material(
                child: Container(
                  height: 170.0,
                  width: 170.0,
                  decoration: const BoxDecoration(
                    color: Colors.redAccent,
                  ),
                  child: const Center(
                    child: Text(
                      'Dragging',
                    ),
                  ),
                ),
              ),
              childWhenDragging: Container(
                height: 150.0,
                width: 150.0,
                color: Colors.grey,
                child: const Center(
                  child: Text(
                    'I was here',
                  ),
                ),
              ),
              child: Container(
                height: 150.0,
                width: 150.0,
                color: Colors.redAccent,
                child: const Center(
                  child: Text(
                    'Drag me',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            DragTarget<String>(
              builder: (
                BuildContext context,
                List<dynamic> accepted,
                List<dynamic> rejected,
              ) {
                return DottedBorder(
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(12),
                  padding: const EdgeInsets.all(6),
                  color: Colors.black,
                  strokeWidth: 2,
                  dashPattern: const [8],
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    child: Container(
                      height: 200,
                      width: 200,
                      color: isDropped ? Colors.redAccent : null,
                      child: Center(
                          child: Text(
                        !isDropped ? 'Drop here' : 'Dropped',
                      )),
                    ),
                  ),
                );
              },
              onAcceptWithDetails: (details) {
                debugPrint('hi ${details.data}');
                setState(() {
                  isDropped = true;
                });
                debugPrint('hi $isDropped');
              },
            ),
          ],
        ),
      ),
    );
  }
}
