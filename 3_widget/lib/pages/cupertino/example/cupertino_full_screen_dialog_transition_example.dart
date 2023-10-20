import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoFullScreenDialogTransitionExample extends StatefulWidget {
  const CupertinoFullScreenDialogTransitionExample({super.key});

  @override
  CupertinoFullscreenDialogTransitionState createState() => CupertinoFullscreenDialogTransitionState();
}

class CupertinoFullscreenDialogTransitionState extends State<CupertinoFullScreenDialogTransitionExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CupertinoButton.filled(
            child: const Text("Next Page Cupertino Transition"),
            onPressed: () => Navigator.of(context).push(
              PageRouteBuilder(
                opaque: false,
                pageBuilder: (context, _, __) {
                  return const FullDialogPage();
                },
              ),
            ),
          ),
        ],
      )),
    );
  }
}

//Second Page
class FullDialogPage extends StatefulWidget {
  const FullDialogPage({super.key});

  @override
  FullDialogPageState createState() => FullDialogPageState();
}

class FullDialogPageState extends State<FullDialogPage> with TickerProviderStateMixin {
  late AnimationController _primary, _secondary;
  late Animation<double> _animationPrimary, _animationSecondary;

  @override
  void initState() {
    //Primaty
    _primary = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _animationPrimary =
        Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(parent: _primary, curve: Curves.easeOut));
    //Secondary
    _secondary = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _animationSecondary =
        Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(parent: _secondary, curve: Curves.easeOut));
    _primary.forward();
    super.initState();
  }

  @override
  void dispose() {
    _primary.dispose();
    _secondary.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoFullscreenDialogTransition(
      primaryRouteAnimation: _animationPrimary,
      secondaryRouteAnimation: _animationSecondary,
      linearTransition: false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo[900],
          title: const Text("Testing"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              _primary.reverse();
              Future.delayed(const Duration(seconds: 1), () {
                Navigator.of(context).pop();
              });
            },
          ),
        ),
      ),
    );
  }
}
