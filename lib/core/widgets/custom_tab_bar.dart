import 'package:evently_offline_sun/core/resources/colors_manager.dart'
    show ColorsManager;
import 'package:evently_offline_sun/core/widgets/tab_item.dart' show TabItem;
import 'package:evently_offline_sun/models/category_model.dart'
    show CategoryModel;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({
    super.key,
    required this.selectedBgColor,
    required this.selectedFgColor,
    required this.unSelectedBgColor,
    required this.unselectedFgColor,
    required this.categories
  });

  final Color selectedBgColor;
  final Color unSelectedBgColor;
  final Color selectedFgColor;
  final Color unselectedFgColor;
  final List<CategoryModel> categories;

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:widget.categories.length,
      child: TabBar(
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        padding: REdgeInsets.symmetric(vertical: 16),

        isScrollable: true,
        indicatorColor: Colors.transparent,
        tabs: widget.categories
            .map(
              (category) => TabItem(
                selectedTabBgColor: widget.selectedBgColor,
                selectedTabFgColor: widget.selectedFgColor,
                unSelectedTabBgColor: widget.unSelectedBgColor,
                unSelectedTabFgColor: widget.unselectedFgColor,
                isSelected:
                    selectedIndex ==
                  widget.categories.indexOf(category),
                category: category,
              ),
            )
            .toList(),
      ),
    );
  }
}
