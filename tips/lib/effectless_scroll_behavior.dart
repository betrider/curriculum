import 'package:flutter/material.dart';

/// banding effect가 제거된 동작
class EffectlessScrollBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
