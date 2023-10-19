import 'package:flutter/material.dart';

/// 트리에 나타나는 알림을 수신하는 위젯입니다.
class NotificationListenerExample extends StatefulWidget {
  const NotificationListenerExample({Key? key}) : super(key: key);

  @override
  State<NotificationListenerExample> createState() => _NotificationListenerExampleState();
}

class _NotificationListenerExampleState extends State<NotificationListenerExample> {
  String message = 'New';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Creating a container and giving it some styling properties
      body: Column(
        children: [
          Container(
            height: 60,
            color: Colors.orangeAccent,
            child: Center(
              child: Text(
                message,
                style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          // using NotificationListener Widget
          Expanded(
              child: NotificationListener<ScrollNotification>(
            onNotification: (scrollNotification) {
              // Logic of scrollNotification
              if (scrollNotification is ScrollStartNotification) {
                setState(() {
                  message = 'Scroll Started';
                });
              } else if (scrollNotification is ScrollUpdateNotification) {
                setState(() {
                  message = 'Scroll Updated';
                });
              } else if (scrollNotification is ScrollEndNotification) {
                setState(() {
                  message = 'Scroll Ended';
                });
              }
              return true;
            },
            // child of type required. Which means its compulsory to pass in NotificationListener
            child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Item: $index'),
                  );
                }),
          ))
        ],
      ),
    );
  }
}
