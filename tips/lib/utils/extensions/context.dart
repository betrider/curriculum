import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

extension ContextExtension on BuildContext {
  
  // 상대경로 push
  Future<void> pushRelative(
    String location, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) async {
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

    final newUrl = currentUrl.replace(path: newPath, queryParameters: queryParams.isEmpty ? null : queryParams);

    await push(newUrl.toString(), extra: extra);
  }

  // Custom call a provider for reading method only
  // It will be helpful for us for calling the read function
  // without Consumer,ConsumerWidget or ConsumerStatefulWidget
  // Incase if you face any issue using this then please wrap your widget
  // with consumer and then call your provider
  T read<T>(ProviderBase<T> provider) {
    return ProviderScope.containerOf(this, listen: false).read(provider);
  }
}
