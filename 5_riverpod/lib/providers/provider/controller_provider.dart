import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final testEditingControllerProvider1 = Provider.autoDispose((ref) => TextEditingController());
final testEditingControllerProvider2 = Provider.autoDispose((ref) => throw UnimplementedError());
