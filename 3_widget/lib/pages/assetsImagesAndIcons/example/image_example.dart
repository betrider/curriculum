import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ImageExample'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const Image(image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg')),
            Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
          ],
        ),
      ),
    );
  }
}
