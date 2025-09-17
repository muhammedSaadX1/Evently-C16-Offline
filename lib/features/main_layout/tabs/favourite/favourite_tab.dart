import 'package:evently_offline_sun/core/resources/colors_manager.dart';
import 'package:evently_offline_sun/features/main_layout/tabs/home/event_item.dart';
import 'package:evently_offline_sun/l10n/app_localizations.dart' show AppLocalizations;
import 'package:evently_offline_sun/models/category_model.dart';
import 'package:evently_offline_sun/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class FavouriteTab extends StatelessWidget {
  const FavouriteTab({super.key});

  @override
  Widget build(BuildContext context) {
    AppLocalizations appLocalizations = AppLocalizations.of(context)!;

    return SafeArea(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: TextField(

              decoration: InputDecoration(

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  borderSide: BorderSide(color: ColorsManager.blue, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  borderSide: BorderSide(color: ColorsManager.blue, width: 1),
                ),
                prefixIcon: Icon(Icons.search),
                prefixIconColor: ColorsManager.blue,
                hintText: appLocalizations.search_for_event,
                hintStyle:GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.bold, color: ColorsManager.blue)
              ),
            ),
          ),
          SizedBox(height: 16.h,),
          Expanded(child: ListView.separated(
              itemBuilder: (context, index)=> EventItem(event: EventModel(category: CategoryModel.getCategoriesWithAll(context)[3], title: "Meeting for Updating The Development Method ", description: "Meeting for Updating The Development Method ", dateTime: DateTime.now(), timeOfDay: TimeOfDay.now())),
              separatorBuilder: (context, index)=>SizedBox(height: 16.h,),
              itemCount: 20))
        ],
      ),
    );
  }
}
