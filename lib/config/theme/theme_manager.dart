import 'package:evently_offline_sun/core/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeManager{
  static final ThemeData light = ThemeData(
      iconTheme: IconThemeData(color: ColorsManager.black1C),
cardTheme: CardThemeData(

  color: ColorsManager.white,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8.r)
  )
),
      primaryColor: ColorsManager.blue,
    useMaterial3: false,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsManager.whiteBlue,
      foregroundColor: ColorsManager.blue,
      centerTitle: true,
      titleTextStyle: GoogleFonts.roboto(fontSize: 22.sp, fontWeight: FontWeight.w400, color: ColorsManager.blue, )
    ),
    scaffoldBackgroundColor: ColorsManager.whiteBlue,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: ColorsManager.blue,
      foregroundColor: ColorsManager.white,
      shape: StadiumBorder(
        side: BorderSide(color: ColorsManager.white, width: 4.w)
      )
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      color: ColorsManager.blue,
      shape: CircularNotchedRectangle()
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: ColorsManager.white,
      unselectedItemColor: ColorsManager.white,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),
    inputDecorationTheme: InputDecorationTheme(

      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: ColorsManager.grey, width: 1.w)
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: ColorsManager.blue, width: 1.w)
      ),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: ColorsManager.red, width: 1.w)
      ),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: ColorsManager.red, width: 1.w)
      ),
      labelStyle: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: ColorsManager.grey),
     hintStyle: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: ColorsManager.grey),
      prefixIconColor: ColorsManager.grey,
      suffixIconColor: ColorsManager.grey

    ),

    elevatedButtonTheme:  ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          padding: REdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(

              borderRadius: BorderRadius.circular(16.r)
          ),
          backgroundColor: ColorsManager.blue,
          foregroundColor: ColorsManager.white,
          textStyle: GoogleFonts.inter(fontSize: 20.sp, fontWeight: FontWeight.w500, color: Colors.white)
      ),
    ),
    textTheme: TextTheme(
      headlineSmall:  GoogleFonts.inter(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: ColorsManager.white,
      ),
      headlineLarge: GoogleFonts.inter(
        fontSize: 24.sp,
        fontWeight: FontWeight.w700,
        color: ColorsManager.white,
      ),
      headlineMedium:  GoogleFonts.inter(
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
        color: ColorsManager.blue,
      ),
      titleSmall:  GoogleFonts.inter(
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
        color: ColorsManager.black1C,
      ),
      labelSmall: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: ColorsManager.black1C),
      labelMedium:GoogleFonts.inter(fontSize: 20.sp, fontWeight: FontWeight.bold, color: ColorsManager.black1C) ,
      displayMedium:GoogleFonts.inter(fontSize: 20.sp, fontWeight: FontWeight.bold, color: ColorsManager.blue) ,
      bodySmall: GoogleFonts.inter(fontSize: 16.sp,color: ColorsManager.black10, fontWeight: FontWeight.w500 ),
    )
  );
  static final ThemeData dark = ThemeData(
      cardTheme: CardThemeData(
          color: ColorsManager.black10,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.r)
          )
      ),
    iconTheme: IconThemeData(color: ColorsManager.ofWhite),
    primaryColor: ColorsManager.black10,
    useMaterial3: false,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsManager.black10,
      foregroundColor: ColorsManager.blue,
      centerTitle: true,
      titleTextStyle: GoogleFonts.roboto(fontSize: 22.sp, fontWeight: FontWeight.w400, color: ColorsManager.blue, )
    ),
    scaffoldBackgroundColor: ColorsManager.black10,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: ColorsManager.black10,
      foregroundColor: ColorsManager.ofWhite,
      shape: StadiumBorder(
        side: BorderSide(color: ColorsManager.ofWhite, width: 4.w)
      )
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      color: ColorsManager.black10,
      shape: CircularNotchedRectangle()
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: ColorsManager.ofWhite,
      unselectedItemColor: ColorsManager.ofWhite,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: ColorsManager.blue, width: 1.w)
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: ColorsManager.blue, width: 1.w)
      ),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: ColorsManager.red, width: 1.w)
      ),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: ColorsManager.red, width: 1.w)
      ),
      labelStyle: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: ColorsManager.ofWhite),
        hintStyle: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: ColorsManager.ofWhite),

        prefixIconColor: ColorsManager.ofWhite,
      suffixIconColor: ColorsManager.ofWhite

    ),

    elevatedButtonTheme:  ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          padding: REdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(

              borderRadius: BorderRadius.circular(16.r)
          ),
          backgroundColor: ColorsManager.blue,
          foregroundColor: ColorsManager.white,
          textStyle: GoogleFonts.inter(fontSize: 20.sp, fontWeight: FontWeight.w500, color: Colors.white)
      ),
    ),
    textTheme: TextTheme(
      headlineSmall:  GoogleFonts.inter(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: ColorsManager.ofWhite,
      ),
      headlineLarge: GoogleFonts.inter(
        fontSize: 24.sp,
        fontWeight: FontWeight.w700,
        color: ColorsManager.ofWhite,
      ),
      headlineMedium:  GoogleFonts.inter(
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
        color: ColorsManager.blue,
      ),
      titleSmall:  GoogleFonts.inter(
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
        color: ColorsManager.ofWhite,
      ),
      labelSmall: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: ColorsManager.ofWhite),
      labelMedium:GoogleFonts.inter(fontSize: 20.sp, fontWeight: FontWeight.bold, color: ColorsManager.ofWhite) ,
      displayMedium:GoogleFonts.inter(fontSize: 20.sp, fontWeight: FontWeight.bold, color: ColorsManager.blue) ,
      bodySmall: GoogleFonts.inter(fontSize: 16.sp,color: ColorsManager.white, fontWeight: FontWeight.w500 ),
    )
  );
}