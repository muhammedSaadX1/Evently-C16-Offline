import 'package:evently_offline_sun/core/extensions/date_time_ex.dart';
import 'package:evently_offline_sun/core/resources/assets_manager.dart';
import 'package:evently_offline_sun/core/resources/colors_manager.dart';
import 'package:evently_offline_sun/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class EventItem extends StatelessWidget {
  EventItem({super.key, required this.event});

  final EventModel event;
  List<String> monthes = [
    "Jan",
    "Feb",
    "March",
    "Apri",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec",
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: REdgeInsets.all(8),
          margin: REdgeInsets.symmetric(horizontal: 16),
          width: double.infinity,
          height: 203.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(ImageAssets.meeting),
            ),
            borderRadius: BorderRadius.circular(16.r),
            border: Border.all(color: ColorsManager.blue, width: 1),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Padding(
                  padding: REdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        event.dateTime.day.toString(),
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                          color: ColorsManager.blue,
                        ),
                      ),
                      Text(
                        event.dateTime.viewMonth,
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
                          color: ColorsManager.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 10,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          event.title,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          color: ColorsManager.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
