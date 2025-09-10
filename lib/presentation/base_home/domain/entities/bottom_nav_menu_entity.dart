import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavMenuEntity {
  String name;
  String icon;
  Function()? onTap;

  BottomNavMenuEntity({
    required this.name,
    required this.icon,
    this.onTap,
  });
}