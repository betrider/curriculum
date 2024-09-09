import 'package:flutter/material.dart';
import 'package:flutter_custom_widget/pages/carousel.dart';
import 'package:flutter_custom_widget/pages/chat_list.dart';
import 'package:flutter_custom_widget/pages/custom_drawer.dart';
import 'package:flutter_custom_widget/pages/custom_dropdown.dart';
import 'package:flutter_custom_widget/pages/double_floating.dart';
import 'package:flutter_custom_widget/pages/global_overlay.dart';
import 'package:flutter_custom_widget/pages/image.dart';
import 'package:flutter_custom_widget/pages/toast.dart';
import 'package:flutter_custom_widget/pages/web_email_login.dart';
import 'package:flutter_custom_widget/pages/item_list.dart';
import 'package:flutter_custom_widget/pages/profile.dart';
import 'package:flutter_custom_widget/pages/social_login.dart';
import 'package:flutter_custom_widget/pages/tooltip.dart';
import 'package:flutter_custom_widget/pages/web_visibility_change_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
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
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
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
        CardWidget(child: WebEmailLoginPage()),
        CardWidget(child: SocialLoginPage()),
        CardWidget(child: DoubleFloatingPage()),
        CardWidget(child: WebVisibilityChangeViewPage()),
        CardWidget(child: ToastPage()),
        CardWidget(child: GlobalOverlayPage()),
        CardWidget(child: ImagePage()),
        CardWidget(child: CustomDrawerPage()),
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
      child: Padding(
        padding: const EdgeInsets.all(16),
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
      ),
    );
  }
}
