import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

class WebVisibilityChangeViewPage extends StatefulWidget {
  const WebVisibilityChangeViewPage({super.key});

  @override
  State<WebVisibilityChangeViewPage> createState() => _WebVisibilityChangeViewPageState();
}

class _WebVisibilityChangeViewPageState extends State<WebVisibilityChangeViewPage> {
  String visibilityStatus = 'Visible';

  @override
  void initState() {
    super.initState();
    // 브라우저의 visibilitychange 이벤트 리스너 추가
    html.document.onVisibilityChange.listen((event) {
      if (html.document.visibilityState == "visible") {
        setState(() {
          visibilityStatus = "Visible";
        });
        print("Browser tab is visible");
      } else {
        setState(() {
          visibilityStatus = "Hidden";
        });
        print("Browser tab is hidden");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(visibilityStatus),
      ),
    );
  }
}
