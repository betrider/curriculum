import 'package:flutter/material.dart';
import 'package:flutter_custom_widget/pages/carousel.dart';
import 'package:flutter_custom_widget/pages/chat_list.dart';
import 'package:flutter_custom_widget/pages/custom_dropdown.dart';
import 'package:flutter_custom_widget/pages/item_list.dart';
import 'package:flutter_custom_widget/pages/profile.dart';
import 'package:flutter_custom_widget/pages/tooltip.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Custom Widget',
      theme: ThemeData(
        fontFamily: 'NotoSansKR',
        appBarTheme: const AppBarTheme(elevation: 1),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20.0),
      crossAxisSpacing: 10.0,
      crossAxisCount: 4,
      children: const <Widget>[
        CardWidget(child: CustomDropDownPage()),
        CardWidget(child: CarouselPage()),
        CardWidget(child: TooltipPage()),
        CardWidget(child: ProfilePage()),
        CardWidget(child: ChatListPage()),
        CardWidget(child: ItemListPage()),
      ],
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => child,
            ),
          );
        },
        child: Center(
          child: Text(child.toString()),
        ),
      ),
    );
  }
}
