// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final GoRouter router = GoRouter(
//       routes: [
//         GoRoute(
//           path: '/',
//           builder: (context, state) => const MyWidget(),
//         ),
//         GoRoute(
//           path: '/mywidget2',
//           builder: (context, state) => const MyWidget2(),
//         ),
//       ],
//     );

//     return MaterialApp.router(
//       routerConfig: router,
//     );
//   }
// }

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Nested Dialog Example'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             _showFirstDialog(context);
//           },
//           child: const Text('Show First Dialog'),
//         ),
//       ),
//     );
//   }

//   void _showFirstDialog(BuildContext context) {
//     String? data;
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return StatefulBuilder(
//           builder: (context, setState) {
//             return AlertDialog(
//               title: Text('First Dialog($data)'),
//               content: const Text('This is the first dialog.'),
//               actions: [
//                 TextButton(
//                   onPressed: () async {
//                     final result = await context.push<String>('/mywidget2');
//                     setState(() {
//                       data = result;
//                     });
//                   },
//                   child: const Text('Show Second Dialog'),
//                 ),
//               ],
//             );
//           },
//         );
//       },
//     );
//   }
// }

// class MyWidget2 extends StatelessWidget {
//   const MyWidget2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('MyWidget2'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             context.pop('Hello from MyWidget2');
//           },
//           child: const Text('callback data'),
//         ),
//       ),
//     );
//   }
// }
