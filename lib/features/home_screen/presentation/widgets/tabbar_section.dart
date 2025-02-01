import 'package:contest_project/core/utiles/all_colors.dart';
import 'package:contest_project/features/home_screen/presentation/widgets/tabbar_button.dart';
import 'package:flutter/material.dart';

class TabbarSection extends StatelessWidget {
  final int clicked;
  final List items;
  final Function clickedButton;
  const TabbarSection({required this.clicked, required this.items, required this.clickedButton, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AllColors.backWhite,
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return TabbarButton(
            func: clickedButton,
            title: items[index],
            clicked: clicked,
            id: index,
          );
        },
      ),
    );
  }
}
