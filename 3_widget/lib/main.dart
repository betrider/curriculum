import 'package:flutter/material.dart';

// 1.lib > main.dart > main(){} start
// 2.runApp
// 3.MaterialApp()
// 4.home - MyHomePage() - view
// 5.Scaffold(canvas)

void main() {
  runApp(const MyApp());
}

// Stateless Widget(state x)
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

// Stateful Widget(state o)
//
// life cycle
//
// 1.initState
// 2.build
// 3.dispose
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(),
      ),
    );
  }
}

/// 필수 widget

/// Scaffold(AppBar, Floatingbutton, Drawer, BottomNavigationBar)
/// 
/// AppBar
/// floatingActionButton
/// Drawer
/// BottomNavigationBar


/// Container(SizedBox / Padding / ColoredBox / DecoratedBox / ConstraindBox) widget
/// 
/// SizedBox
/// Padding
/// ColoredBox
/// DecoratedBox
/// ConstraindBox

/// 레이아웃 widget
/// Flexible, Expanded, Spacer
 
/// ???

/// Divider
/// Icon
/// Image
/// PlaceHolder
/// icon
/// image

/// text widget o
/// 
/// Text
/// TextField
/// TextFormField

/// align widget o
/// 
/// Align
/// Center

/// button widget o
/// 
/// ElevatedButton
/// OutlinedButton
/// TextButton
/// IconButton

/// children widget o
///
/// Row
/// Column
/// Stack
/// 

/// scroll widget o
/// 
/// SingleChildScrollView
/// ListView
/// GridView
/// Wrap
/// 

/// gesture widget o
/// 
/// InkWell
/// GestureDetector

/// show o
/// 
/// showModalBottomSheet
/// showDialog
/// showSnackBar
/// showTimePicker
/// showDatePicker

/// other
/// CircleAvatar
/// ClipOval, ClipPath, ClipRRect, ClipRect
/// visibility, Opacity, Offstage

/// builder
/// 
/// LayoutBuilder