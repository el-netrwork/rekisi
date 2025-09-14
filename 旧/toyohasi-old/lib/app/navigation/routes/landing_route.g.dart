// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'landing_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $landingRoute,
    ];

RouteBase get $landingRoute => GoRouteData.$route(
      path: '/',
      factory: $LandingRouteExtension._fromState,
    );

extension $LandingRouteExtension on LandingRoute {
  static LandingRoute _fromState(GoRouterState state) => const LandingRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
