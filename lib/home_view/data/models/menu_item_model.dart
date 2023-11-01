

import 'package:flutter/material.dart';

class MenuItemModel {
  final Color borderColor;
  final Color selectedBorderColor;
  final String title;

  MenuItemModel({required this.borderColor, required this.selectedBorderColor, required this.title});

  static List<MenuItemModel> menuItemsList = [
    MenuItemModel(borderColor: Colors.white60, selectedBorderColor: Colors.grey, title: "Coins List"),
    MenuItemModel(borderColor: Colors.white60, selectedBorderColor: Colors.grey, title: "Trending"),
    MenuItemModel(borderColor: Colors.white60, selectedBorderColor: Colors.grey, title: "Top Gainers"),
    MenuItemModel(borderColor: Colors.white60, selectedBorderColor: Colors.grey, title: "Top Losers"),
    MenuItemModel(borderColor: Colors.white60, selectedBorderColor: Colors.grey, title: "Most Visited"),
    MenuItemModel(borderColor: Colors.white60, selectedBorderColor: Colors.grey, title: "Newly Listed"),

  ];
}