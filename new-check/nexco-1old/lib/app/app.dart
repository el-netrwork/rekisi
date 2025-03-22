import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stamp_rally/app/configuration/configuration.dart';
import 'package:stamp_rally/app/navigation/navigation_provider.dart';
import 'package:stamp_rally/app/setup/flavor.dart';
import 'package:stamp_rally/app/themes/app_theme.dart';
import 'package:stamp_rally/assets/localization/strings.g.dart';

class App extends ConsumerWidget {
  const App({super.key});

  static Future<void> startApp({required ProviderContainer providerContainer}) async {
    runApp(
      TranslationProvider(
        child: UncontrolledProviderScope(
          container: providerContainer,
          child: const App(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    switch (Configuration.instance.flavor) {
      case Flavor.develop:
      case Flavor.production:
        return Directionality(
          textDirection: TextDirection.ltr,
          child: Stack(
            children: [
              _createAppWidget(context, ref),
            ],
          ),
        );
    }
  }

  Widget _createAppWidget(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    return MaterialApp.router(
      title: 'Stamp Rally App',
      theme: AppTheme.getThemeData(),
      darkTheme: AppTheme.getThemeData(),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("ja", "JP"),
      ],
      locale: TranslationProvider.of(context).flutterLocale,
      routerConfig: goRouter,
    );
  }
}
