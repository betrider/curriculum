import 'package:flutter/material.dart';

extension ColorExtension on Color? {
  MaterialStateProperty<Color?>? toMaterialStateProperty() {
    return MaterialStateProperty.all<Color?>(this);
  }
}
