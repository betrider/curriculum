import 'package:flutter/material.dart';
import 'package:flutter_custom_widget/components/separated_column.dart';

class ElevatedButtonPage extends StatelessWidget {
  static const routeName = 'elevated-button';
  const ElevatedButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ElevatedButtonPage'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: SeparatedColumn(
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {
                  print('버튼');
                },
                child: const Text('버튼'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {
                  print('버튼');
                },
                child: const Text('버튼'),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {
                  print('버튼');
                },
                child: const Text('버튼'),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {
                  print('버튼');
                },
                child: const Text('버튼'),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {
                  print('버튼');
                },
                child: const Text('버튼'),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {
                  print('버튼');
                },
                child: const Text('버튼'),
              ),
              // ---
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  print('버튼');
                },
                child: const Text('버튼'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  print('버튼');
                },
                child: const Text('버튼'),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  print('버튼');
                },
                child: const Text('버튼'),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  print('버튼');
                },
                child: const Text('버튼'),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  print('버튼');
                },
                child: const Text('버튼'),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  print('버튼');
                },
                child: const Text('버튼'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: const BorderSide(color: Colors.red),
                  ),
                ),
                onPressed: () {
                  print('버튼');
                },
                child: const Text(
                  '버튼',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: const BorderSide(color: Colors.red),
                  ),
                ),
                onPressed: () {
                  print('버튼');
                },
                child: const Text(
                  '버튼',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  side: const BorderSide(color: Colors.red),
                ),
                onPressed: () {
                  print('버튼');
                },
                child: const Text(
                  '버튼',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  side: const BorderSide(color: Colors.red),
                ),
                onPressed: () {
                  print('버튼');
                },
                child: const Text(
                  '버튼',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: const BorderSide(color: Colors.red),
                  ),
                ),
                onPressed: () {
                  print('버튼');
                },
                child: const Text(
                  '버튼',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: const BorderSide(color: Colors.red),
                  ),
                ),
                onPressed: () {
                  print('버튼');
                },
                child: const Text(
                  '버튼',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
