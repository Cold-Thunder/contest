import 'package:contest_project/core/utiles/all_colors.dart';
import 'package:contest_project/core/utiles/all_texts.dart';
import 'package:contest_project/core/utiles/styles/all_text_styles.dart';
import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(15),
      width: size.width,
      color: AllColors.backWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 5,
        children: [
          Text(AllTexts.foodTitle, style: AllTextStyles.headingTextStyle),
          Text(AllTexts.itemDes, style: AllTextStyles.productDesTextStyle)
        ],
      ),
    );
  }
}
