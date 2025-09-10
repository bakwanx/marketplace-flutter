import 'package:flutter/material.dart';
import 'package:marketplace/presentation/base_home/domain/entities/bottom_nav_menu_entity.dart';
import 'package:marketplace/presentation/home_screen.dart';
import 'package:marketplace/presentation/mall_screen.dart';
import 'package:marketplace/utils/const/assets_path.dart';

class HomeBaseUseCase {
  List<Widget> getPage(){
    return [
      HomeScreen(),
      MallScreen(),
      Scaffold(
        body: Center(
          child: Text("Discover Page"),
        ),
      ),
      Scaffold(
        body: Center(
          child: Text("Inbox Page"),
        ),
      ),
      Scaffold(
        body: Center(
          child: Text("Account"),
        ),
      )
    ];
  }
}