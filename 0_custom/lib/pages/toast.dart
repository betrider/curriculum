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
