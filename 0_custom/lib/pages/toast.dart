import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastPage extends StatelessWidget {
  static const routeName = 'toast';
  const ToastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                CustomToast.successMessage("Success Message");
              },
              child: const Text("Show Success Toast"),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                CustomToast.errorMessage("Error Message");
              },
              child: const Text("Show Error Toast"),
            ),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      "성공입니다.",
                      style: TextStyle(color: Colors.white),
                    ),
                    duration: Duration(seconds: 1),
                    backgroundColor: Colors.green,
                  ),
                );
              },
              child: const Text("Show Success Toast"),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("실패입니다."),
                    duration: Duration(seconds: 1),
                    backgroundColor: Colors.red,
                  ),
                );
              },
              child: const Text("Show Error Toast"),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomToast {
  static void successMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 2,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  static void errorMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 2,
      webBgColor: "linear-gradient(to right, #FF0000, #FF0000)",
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
