import 'package:flutter/material.dart';

class AutomaticKeepAlivePage extends StatefulWidget {
  const AutomaticKeepAlivePage({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  AutomaticKeepAlivePageState createState() => AutomaticKeepAlivePageState();
}

class AutomaticKeepAlivePageState extends State<AutomaticKeepAlivePage> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return widget.child;
  }
}