import 'package:evently_offline_sun/core/prefs_manager/prefs-manager.dart';
import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier{
  String currentLang = PrefsManager.getSavedLang() ?? "en";
  bool get isEnglish=>currentLang == "en";

  void changeAppLanguage(String newLang){
    if(currentLang == newLang)return;
    currentLang = newLang;
    PrefsManager.saveLanguage(currentLang);
    notifyListeners();
  }
}