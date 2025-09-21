import 'package:evently_offline_sun/core/resources/colors_manager.dart' show ColorsManager;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropDownItem extends StatelessWidget {
  const DropDownItem({super.key, required this.label, required this.selectedItem, required this.menuItems, required this.onChange});
  final String label;
  final String selectedItem;
  final List<String> menuItems;
  final void Function(String?) onChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: Theme.of(context).textTheme.labelMedium),
          SizedBox(height: 16),
          Container(
            height: 66.h,
            padding: REdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.r),
              border: Border.all(color: ColorsManager.blue, width: 1),
            ),
            child: Row(
              children: [
                Text(selectedItem, style: Theme.of(context).textTheme.displayMedium),
                Spacer(),
                DropdownButton<String>(
                  underline: SizedBox(),
                  items: menuItems.map((value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: onChange,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
