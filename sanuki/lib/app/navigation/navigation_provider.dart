library navigation_provider;

import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally/app/navigation/routes/error_route.dart';
import 'package:stamp_rally/app/navigation/routes/home_route.dart' as home;
import 'package:stamp_rally/app/navigation/routes/landing_route.dart' as landing;

part 'navigation_provider.g.dart';

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    debugLogDiagnostics: kDebugMode,
    errorBuilder: (context, state) => ErrorRoute(error: state.error).build(context, state),
    routes: [
      ...landing.$appRoutes,
      ...home.$appRoutes,
    ],
  );
}
