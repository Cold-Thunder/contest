import 'package:contest_project/core/utiles/all_colors.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        height: 8,
        width: size.width,
        color: AllColors.backGrey
    );
  }
}
