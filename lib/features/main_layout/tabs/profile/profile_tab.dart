import 'package:evently_offline_sun/core/resources/assets_manager.dart';
import 'package:evently_offline_sun/core/resources/colors_manager.dart';
import 'package:evently_offline_sun/features/main_layout/tabs/profile/drop_down_item.dart';
import 'package:evently_offline_sun/l10n/app_localizations.dart' show AppLocalizations;
import 'package:evently_offline_sun/providers/language_provider.dart';
import 'package:evently_offline_sun/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    AppLocalizations appLocalizations = AppLocalizations.of(context)!;
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    LanguageProvider languageProvider = Provider.of<LanguageProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorsManager.blue,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(36.r)),
          ),
          child: Padding(
            padding: REdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(ImageAssets.profileImage),
                SizedBox(width: 16.w),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Moo Saad",
                        style: GoogleFonts.inter(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          color: ColorsManager.white,
                        ),
                      ),
                      Text(
                        "moosaad@gmail.com",
                        style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: ColorsManager.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 24.h),
        DropDownItem(
          onChange: (newTheme){
            themeProvider.changeAppTheme(newTheme == appLocalizations.light? ThemeMode.light : ThemeMode.dark);
          },
          label: appLocalizations.theme,
          selectedItem:themeProvider.isDark ?  appLocalizations.dark: appLocalizations.light,
          menuItems: [appLocalizations.light, appLocalizations.dark],
        ),
        SizedBox(height: 16),
        DropDownItem(
          onChange: (newLang){
            languageProvider.changeAppLanguage(newLang == "English" ?"en":"ar");
          },
          label:appLocalizations.language,
          selectedItem: languageProvider.isEnglish ? "English": "Arabic",
          menuItems: ["English", "Arabic"],
        ),
        Spacer(flex: 6,),

        Container(
          margin: REdgeInsets.symmetric(horizontal: 16, vertical: 120),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(

                backgroundColor: ColorsManager.red,
                foregroundColor: ColorsManager.whiteBlue,
                padding: REdgeInsets.all(16.0),
                textStyle: GoogleFonts.inter(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorsManager.white,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.r)
                )
            ),
            onPressed: () {},
            child: Row(children: [
              Icon(Icons.logout),
              SizedBox(width: 8.w,),
              Text(appLocalizations.logout)
            ]),
          ),
        ),
        //Spacer(flex: 4,)
      ],
    );
  }
}
