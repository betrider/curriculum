import 'package:flutter/material.dart';

extension ColorExtension on Color? {
  WidgetStateProperty<Color?>? toMaterialStateProperty() {
    return WidgetStateProperty.all<Color?>(this);
  }
}
