import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../pages/landing/landing_page.dart';

part 'landing_route.g.dart';

@TypedGoRoute<LandingRoute>(path: '/')
class LandingRoute extends GoRouteData {
  const LandingRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const LandingPage();
}
