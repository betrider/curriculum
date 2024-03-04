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
        child: ElevatedButton(
          onPressed: (){
            setState(() {
              count += 1;
            });
          },
          child: Text(count.toString()),
        ),
      ),
    );
  }
}

/// child widget
///
/// Scaffold(AppBar, Floatingbutton, Drawer, BottomNavigationBar)
/// Container(SizedBox / Padding / DecoratedBox)
/// Flexible, Expanded, Spacer
/// Align, Center
/// ElevatedButton, OutlinedButton, TextButton, IconButton
/// Text
/// Divider
/// TextField, TextFormField
/// Icon
/// Image
/// PlaceHolder
/// 
/// CircleAvatar, ClipOval, ClipPath, ClipRRect, ClipRect
/// visibility, Opacity, Offstage

/// children widget
///
/// Row
/// Column
/// Stack
/// 

/// scroll widget
/// 
/// SingleChildScrollView
/// ListView
/// GridView
/// Wrap
/// 

/// gesture widget
/// 
/// InkWell
/// GestureDetector

/// show
/// 
/// showModalBottomSheet
/// showDialog
/// showSnackBar
/// showTimePicker
/// showDatePicker
