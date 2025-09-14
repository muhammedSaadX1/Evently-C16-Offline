import 'package:flutter/material.dart';

class CategoryModel{
  String id;
  String name;
  IconData iconData;
  String imagePath;
  CategoryModel({required this.id, required this.name, required this.iconData, required this.imagePath});


  static List<CategoryModel> categoriesWithAll = [
    CategoryModel(id: "0", name: "All", iconData: Icons.all_inclusive_rounded, imagePath: ""),
    CategoryModel(id: "1", name: "Sports", iconData: Icons.sports_football_rounded, imagePath: ""),
    CategoryModel(id: "2", name: "Birthday", iconData: Icons.cake_rounded, imagePath: ""),
    CategoryModel(id: "3", name: "Meeting", iconData: Icons.laptop_mac_rounded, imagePath: ""),
    CategoryModel(id: "4", name: "Gaming", iconData: Icons.gamepad_rounded, imagePath: ""),
    CategoryModel(id: "5", name: "Eating", iconData: Icons.local_pizza_rounded, imagePath: ""),
    CategoryModel(id: "6", name: "Holiday", iconData: Icons.holiday_village_rounded, imagePath: ""),
    CategoryModel(id: "7", name: "Exhibition", iconData: Icons.water_drop_rounded, imagePath: ""),
    CategoryModel(id: "8", name: "WorkShop", iconData: Icons.workspaces_rounded, imagePath: ""),
    CategoryModel(id: "9", name: "bookClub", iconData: Icons.book_rounded, imagePath: ""),
  ];
  static List<CategoryModel> categories = [
    CategoryModel(id: "1", name: "Sports", iconData: Icons.sports_football_rounded, imagePath: ""),
    CategoryModel(id: "2", name: "Birthday", iconData: Icons.cake_rounded, imagePath: ""),
    CategoryModel(id: "3", name: "Meeting", iconData: Icons.laptop_mac_rounded, imagePath: ""),
    CategoryModel(id: "4", name: "Gaming", iconData: Icons.gamepad_rounded, imagePath: ""),
    CategoryModel(id: "5", name: "Eating", iconData: Icons.local_pizza_rounded, imagePath: ""),
    CategoryModel(id: "6", name: "Holiday", iconData: Icons.holiday_village_rounded, imagePath: ""),
    CategoryModel(id: "7", name: "Exhibition", iconData: Icons.water_drop_rounded, imagePath: ""),
    CategoryModel(id: "8", name: "WorkShop", iconData: Icons.workspaces_rounded, imagePath: ""),
    CategoryModel(id: "9", name: "bookClub", iconData: Icons.book_rounded, imagePath: ""),
  ];
}