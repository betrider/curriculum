import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_custom_widget/components/separated_column.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loader_overlay/loader_overlay.dart';

class UtilsPage extends StatelessWidget {
  static const routeName = 'utils';
  const UtilsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UtilsPage'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: SeparatedColumn(
              separatorBuilder: (context, index) => const SizedBox(height: 16),
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Clipboard.setData(const ClipboardData(text: '안녕하세요')).then((value) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('토큰이 복사되었습니다.'),
                        ),
                      );
                    });
                  },
                  child: const Text('복사기능'),
                ),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('알림이 왔습니다.'),
                      ),
                    );
                  },
                  child: const Text('스캐폴드 메신저'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Fluttertoast.showToast(
                      msg: '성공토스트',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 2,
                      textColor: Colors.white,
                      fontSize: 16.0,
                    );
                  },
                  child: const Text('토스트(성공)'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Fluttertoast.showToast(
                      msg: '실패토스트',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 2,
                      webBgColor: "linear-gradient(to right, #FF0000, #FF0000)",
                      textColor: Colors.white,
                      fontSize: 16.0,
                    );
                  },
                  child: const Text('토스트(실패)'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    context.loaderOverlay.show();
                    await Future.delayed(const Duration(seconds: 2));
                    if (context.mounted) context.loaderOverlay.hide();
                  },
                  child: const Text('show overlay(default)'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    context.loaderOverlay.show(
                      widgetBuilder: (progress) {
                        return const Center(
                          child: SpinKitFadingCircle(
                            color: Colors.blue,
                            size: 50.0,
                          ),
                        );
                      },
                    );
                    await Future.delayed(const Duration(seconds: 2));
                    if (context.mounted) context.loaderOverlay.hide();
                  },
                  child: const Text('show overlay(custom)'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
