import 'package:evently_offline_sun/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TabItem extends StatelessWidget {
  const TabItem({
    super.key,
    required this.selectedTabBgColor,
    required this.selectedTabFgColor,
    required this.unSelectedTabBgColor,
    required this.unSelectedTabFgColor,
    required this.isSelected,
    required this.category
  });

  final Color selectedTabBgColor;
  final Color selectedTabFgColor;
  final Color unSelectedTabBgColor;
  final Color unSelectedTabFgColor;
  final bool isSelected;
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Container(
padding: REdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          color: isSelected ? selectedTabBgColor: unSelectedTabBgColor,
          borderRadius: BorderRadius.circular(36.r),
      border: Border.all(color: selectedTabBgColor, width: 1.w)
      ),
      child: Row(
        children: [
          Icon(category.iconData, color: isSelected? selectedTabFgColor : unSelectedTabFgColor,),
          SizedBox(width: 8.w,),
          Text(category.name, style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: isSelected ? selectedTabFgColor: unSelectedTabFgColor),)
        ],
      ),
    );
  }
}
