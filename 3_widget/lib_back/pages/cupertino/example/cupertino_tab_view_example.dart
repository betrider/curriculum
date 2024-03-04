import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTabViewExample extends StatefulWidget {
  const CupertinoTabViewExample({Key? key}) : super(key: key);

  @override
  CupertinoTabViewExampleState createState() {
    return CupertinoTabViewExampleState();
  }
}

class CupertinoTabViewExampleState extends State<CupertinoTabViewExample> {
  List<Widget> data = [const HomeScreenTab(), const ProfileScreenTab()];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: Colors.blueGrey,
        activeColor: Colors.white,
        inactiveColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: "Profile",
          )
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            return data[index];
          },
        );
      },
    );
  }
}

class HomeScreenTab extends StatelessWidget {
  const HomeScreenTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/logo.png",
            height: 270,
            width: 350,
          ),
          const Text(
            "This is Home Page",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}

class ProfileScreenTab extends StatelessWidget {
  const ProfileScreenTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/powered_by.png",
            height: 270,
            width: 400,
          ),
          const Text(
            "This is Profile Page",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
