import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorRoute extends GoRouteData {
  ErrorRoute({this.error});

  final GoException? error;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) => MaterialPage(
        fullscreenDialog: true,
        child: Text(state.error.toString()),
      );
}
