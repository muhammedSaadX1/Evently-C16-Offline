import 'package:evently_offline_sun/config/theme/theme_manager.dart';
import 'package:evently_offline_sun/core/routes_manager/routes_manager.dart';
import 'package:evently_offline_sun/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const Evently());
}


class Evently extends StatelessWidget {
  const Evently({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(393, 841),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) =>
            MaterialApp(
              debugShowCheckedModeBanner: false,
              initialRoute: RoutesManager.mainLayout,
              onGenerateRoute: RoutesManager.router,
              theme: ThemeManager.light,
              darkTheme: ThemeManager.dark,
              themeMode: ThemeMode.dark,
              locale: Locale("en"),
              localizationsDelegates:  AppLocalizations.localizationsDelegates,
              supportedLocales: [
                Locale('en'), // English
                Locale('ar'), // Spanish
              ],
            ),

    );
  }
}
