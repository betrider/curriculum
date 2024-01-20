


import 'package:flutter/material.dart';

// flex : 비율

// FlexFit.tight : 가능한 늘어난다.
// FlexFit.loose : 필요한 만큼 늘어난다.

class FlexibleAndExpanded extends StatelessWidget{
  const FlexibleAndExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body:
       Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              ExpandedWidget(),
              FlexibleWidget(),
            ],
          ),
          Row(
            children: [
              ExpandedWidget(),
              ExpandedWidget(),
            ],
          ),
          Row(mainAxisSize: MainAxisSize.min,
            children: [
              FlexibleWidget(),
              FlexibleWidget(),
            ],
          ),
          Row(mainAxisSize: MainAxisSize.min,
            children: [
              FlexibleWidget(),
              ExpandedWidget(),
            ],
          ),
        ],
     ),
    );
  }
}

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          border: Border.all(color: Colors.white),
        ),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Expanded',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }
}

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(color: Colors.white),
        ),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Flexible',
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
        ),
      ),
    );
  }
}