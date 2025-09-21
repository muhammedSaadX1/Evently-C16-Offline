import 'package:evently_offline_sun/config/theme/theme_manager.dart';
import 'package:evently_offline_sun/core/prefs_manager/prefs-manager.dart';
import 'package:evently_offline_sun/core/routes_manager/routes_manager.dart';
import 'package:evently_offline_sun/l10n/app_localizations.dart';
import 'package:evently_offline_sun/providers/language_provider.dart';
import 'package:evently_offline_sun/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
 await  PrefsManager.init();
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> ThemeProvider()),
        ChangeNotifierProvider(create: (context)=> LanguageProvider()),
      ],
      child: const Evently()));
}


class Evently extends StatelessWidget {
  const Evently({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    LanguageProvider languageProvider = Provider.of<LanguageProvider>(context);
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
              themeMode: themeProvider.currentTheme,
              locale: Locale(languageProvider.currentLang),
              localizationsDelegates:  AppLocalizations.localizationsDelegates,
              supportedLocales: [
                Locale('en'), // English
                Locale('ar'), // Spanish
              ],
            ),

    );
  }
}
