import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_widget/pages/box_shadow.dart';
import 'package:flutter_custom_widget/pages/card_swiper.dart';
import 'package:flutter_custom_widget/pages/carousel.dart';
import 'package:flutter_custom_widget/pages/chat_list.dart';
import 'package:flutter_custom_widget/pages/custom_drawer.dart';
import 'package:flutter_custom_widget/pages/custom_dropdown.dart';
import 'package:flutter_custom_widget/pages/custom_tooltip.dart';
import 'package:flutter_custom_widget/pages/double_floating.dart';
import 'package:flutter_custom_widget/pages/global_overlay.dart';
import 'package:flutter_custom_widget/pages/image.dart';
import 'package:flutter_custom_widget/pages/item_list.dart';
import 'package:flutter_custom_widget/pages/profile.dart';
import 'package:flutter_custom_widget/pages/qr.dart';
import 'package:flutter_custom_widget/pages/scroll_animation.dart';
import 'package:flutter_custom_widget/pages/social_button.dart';
import 'package:flutter_custom_widget/pages/social_login.dart';
import 'package:flutter_custom_widget/pages/toast.dart';
import 'package:flutter_custom_widget/pages/tooltip.dart';
import 'package:flutter_custom_widget/pages/toss_scroll_index.dart';
import 'package:flutter_custom_widget/pages/toss_scroll_offset.dart';
import 'package:flutter_custom_widget/pages/vertical_page_view.dart';
import 'package:flutter_custom_widget/pages/video_player.dart';
import 'package:flutter_custom_widget/pages/web_email_login.dart';
import 'package:flutter_custom_widget/pages/web_visibility_change_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

/// 데스킅탑 OS 여부
bool isDesktop = (defaultTargetPlatform == TargetPlatform.windows || defaultTargetPlatform == TargetPlatform.macOS);

void main() {
  // 위젯 바인딩 초기화
  WidgetsFlutterBinding.ensureInitialized();
  // url # 제거
  usePathUrlStrategy();
  // 앱 실행
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
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(16),
      crossAxisSpacing: 8,
      crossAxisCount: isDesktop ? 4 : 2,
      children: const <Widget>[
        CardWidget(title: CustomDropDownPage.routeName, child: CustomDropDownPage()),
        CardWidget(title: CarouselPage.routeName, child: CarouselPage()),
        CardWidget(title: TooltipPage.routeName, child: TooltipPage()),
        CardWidget(title: CustomTooltipPage.routeName, child: CustomTooltipPage()),
        CardWidget(title: ProfilePage.routeName, child: ProfilePage()),
        CardWidget(title: ChatListPage.routeName, child: ChatListPage()),
        CardWidget(title: ItemListPage.routeName, child: ItemListPage()),
        CardWidget(title: WebEmailLoginPage.routeName, child: WebEmailLoginPage()),
        CardWidget(title: SocialLoginPage.routeName, child: SocialLoginPage()),
        CardWidget(title: DoubleFloatingPage.routeName, child: DoubleFloatingPage()),
        CardWidget(title: WebVisibilityChangeViewPage.routeName, child: WebVisibilityChangeViewPage()),
        CardWidget(title: ToastPage.routeName, child: ToastPage()),
        CardWidget(title: GlobalOverlayPage.routeName, child: GlobalOverlayPage()),
        CardWidget(title: ImagePage.routeName, child: ImagePage()),
        CardWidget(title: CustomDrawerPage.routeName, child: CustomDrawerPage()),
        CardWidget(title: ScrollAnimationPage.routeName, child: ScrollAnimationPage()),
        CardWidget(title: VerticalPageViewPage.routeName, child: VerticalPageViewPage()),
        CardWidget(title: QRPage.routeName, child: QRPage()),
        CardWidget(title: SocialButtonPage.routeName, child: SocialButtonPage()),
        CardWidget(title: VideoPlayerPage.routeName, child: VideoPlayerPage()),
        CardWidget(title: TossScrollOffsetPage.routeName, child: TossScrollOffsetPage()),
        CardWidget(title: TossScrollIndexPage.routeName, child: TossScrollIndexPage()),
        CardWidget(title: BoxShadowPage.routeName, child: BoxShadowPage()),
        CardWidget(title: CardSwiperPage.routeName, child: CardSwiperPage()),
      ],
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
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
              child: Text(title),
            ),
          ),
        ),
      ),
    );
  }
}
