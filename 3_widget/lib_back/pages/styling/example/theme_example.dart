import 'package:flutter/material.dart';

/// 하위 위젯에 테마를 적용합니다. 테마는 애플리케이션의 색상과 인쇄체 선택을 설명합니다.
class ThemeExample extends StatelessWidget {
  const ThemeExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        useMaterial3: true,
        // Define the default brightness and colors.
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          // TRY THIS: Change to "Brightness.light"
          //           and see that all colors change
          //           to better contrast a light background.
          brightness: Brightness.dark,
        ),
      ),
      child: Scaffold(
        body: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 12,
            ),
            color: Theme.of(context).colorScheme.primary,
            child: Text(
              'Text with a background color',
              // TRY THIS: Change the Text value
              //           or change the Theme.of(context).textTheme
              //           to "displayLarge" or "displaySmall".
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
          ),
        ),
        floatingActionButton: Theme(
          data: Theme.of(context).copyWith(
            // TRY THIS: Change the seedColor to "Colors.red" or
            //           "Colors.blue".
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.pink,
              brightness: Brightness.dark,
            ),
          ),
          child: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
