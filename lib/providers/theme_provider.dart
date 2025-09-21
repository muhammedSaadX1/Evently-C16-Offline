import 'package:evently_offline_sun/core/prefs_manager/prefs-manager.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode currentTheme =   PrefsManager.getSavedTheme() ?? ThemeMode.light;

  bool get isDark => currentTheme ==
  ThemeMode.dark;


  void changeAppTheme(ThemeMode newTheme){
    if(currentTheme == newTheme) return;

    currentTheme = newTheme;
    PrefsManager.saveTheme(currentTheme);
    notifyListeners();
  }

}