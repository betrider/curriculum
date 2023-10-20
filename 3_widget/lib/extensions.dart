import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension ContextExtension on BuildContext {
  // 상대경로 push
  Future<void> pushRelative(
    String location, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) async{
    assert(
      !location.startsWith('/'),
      "Relative locations must not start with a '/'.",
    );

    final state = GoRouterState.of(this);
    final currentUrl = Uri.parse(state.uri.toString());
    String newPath = '${currentUrl.path}/$location';
    for (final entry in pathParameters.entries) {
      newPath = newPath.replaceAll(':${entry.key}', entry.value);
    }

    final queryParams = {
      ...currentUrl.queryParameters,
      ...queryParameters,
    };

    final newUrl = currentUrl.replace(
      path: newPath,
      queryParameters: queryParams.isEmpty ? null : queryParams
    );

    await push(newUrl.toString(), extra: extra);
  }
}

extension DynamicExtension on Type {
  String get name {
    return toString();
  }
  String get underscoreCaseName {
    String camelCase = toString();
    RegExp exp = RegExp(r'(?<=[a-z])[A-Z]');
    String underscoreCase = camelCase.replaceAllMapped(exp, (Match m) => ('_${m.group(0)}')).toLowerCase();
    return underscoreCase;
  }
}