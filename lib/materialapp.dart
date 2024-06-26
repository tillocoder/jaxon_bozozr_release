import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/config/lang_setting/inherted_locale.dart';
import 'core/languages/app_local.dart';
import 'core/router/app_routes.dart';
import 'core/theme/dark_theme.dart';
import 'core/theme/light_theme.dart';

MaterialApp materialApp(BuildContext context) {
  return MaterialApp.router(
    locale: InheritedLocalNotifier.maybeOf(context)?.appLocale ??
        const Locale('ru', 'Ru'),
    supportedLocales: const [
      Locale('ru', 'RU'),
      Locale('uz', 'UZ'),
    ],
    localizationsDelegates: const [
      AppLocalization.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ],
    theme: lightTheme,
    darkTheme: darkTheme,
    debugShowCheckedModeBanner: false,
    routerConfig: Routing.router,
  );
}
