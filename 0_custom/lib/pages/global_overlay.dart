import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loader_overlay/loader_overlay.dart';

class GlobalOverlayPage extends StatelessWidget {
  static const routeName = 'global-overlay';
  const GlobalOverlayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      overlayColor: Colors.grey.withOpacity(0.8),
      overlayWidgetBuilder: (progress) {
        return const Center(
          child: SpinKitFadingCircle(
            color: Color(0xFFFAE439),
            size: 50.0,
          ),
        );
      },
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              context.loaderOverlay.show();
              Future.delayed(const Duration(seconds: 2), () {
                context.loaderOverlay.hide();
              });
            },
            child: const Text("Show Overlay"),
          ),
        ),
      ),
    );
  }
}
