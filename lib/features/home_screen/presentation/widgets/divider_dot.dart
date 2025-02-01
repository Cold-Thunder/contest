import 'package:contest_project/core/utiles/all_colors.dart';
import 'package:flutter/material.dart';

class DividerDot extends StatelessWidget {
  const DividerDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 3,
      width: 3,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:AllColors.hintGrey
      )
    );
  }
}
