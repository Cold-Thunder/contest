import 'package:contest_project/features/food_view_screen/food_view_screen.dart';
import 'package:contest_project/features/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class RoutesHelper{
  static String homeScreen = '/';
  static String foodViewScreen = '/food_view_screen';

  static Map<String, WidgetBuilder> routes(){
    return {
      homeScreen: (context)=>HomeScreen(),
      foodViewScreen: (context)=>FoodViewScreen()
    };
  }
}