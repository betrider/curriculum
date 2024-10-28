import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// context.go() == GoRouter.of(context).go()

/// 컨텍스트 확장
extension GoRouterContext on BuildContext {
  String get currentUri => GoRouter.of(this).routerDelegate.currentConfiguration.uri.toString();
  String get currentFullpath => GoRouter.of(this).routerDelegate.currentConfiguration.fullPath;
}