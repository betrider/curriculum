import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomDrawerPage extends ConsumerWidget {
  static const routeName = 'custom-drawer';
  const CustomDrawerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomDrawerPage'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ref.read(deviceSearchDrawerProvider).showDrawer(
                  context,
                  const Scaffold(
                    body: Placeholder(),
                  ),
                );
          },
          child: const Text('Show Drawer'),
        ),
      ),
    );
  }
}

final deviceSearchDrawerProvider = ChangeNotifierProvider<DrawerNotifier>((ref) {
  return DrawerNotifier();
});

class DrawerNotifier extends ChangeNotifier {
  OverlayEntry? _overlayEntry;
  final double _drawerWidthFactor = 0.5;
  double _initialDrawerPosition = -1; // Start off-screen
  double offSize = 0;

  void showDrawer(BuildContext context, Widget child) {
    offSize = -MediaQuery.of(context).size.width * _drawerWidthFactor; // Start off-screen
    _initialDrawerPosition = offSize;
    _overlayEntry = _createOverlayEntry(child);
    Overlay.of(context).insert(_overlayEntry!);
    notifyListeners();
    expandeDrawer();
  }

  void expandeDrawer() async {
    await Future.delayed(const Duration(milliseconds: 100));
    _initialDrawerPosition = 0;
    notifyListeners();
  }

  void hideDrawer() async {
    _initialDrawerPosition = offSize;
    notifyListeners();
    Future.delayed(const Duration(milliseconds: 300), () {
      _overlayEntry?.remove();
      _overlayEntry = null;
    });
  }

  OverlayEntry _createOverlayEntry(Widget child) {
    return OverlayEntry(
      builder: (context) => AnimatedBuilder(
        animation: this,
        builder: (context, _) => Stack(
          children: [
            Positioned.fill(
              child: GestureDetector(
                onTap: hideDrawer,
                child: Container(
                  color: Colors.black54,
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              top: 0,
              right: _initialDrawerPosition,
              width: MediaQuery.of(context).size.width * _drawerWidthFactor,
              height: MediaQuery.of(context).size.height,
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
