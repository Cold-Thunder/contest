import 'package:contest_project/core/utiles/all_colors.dart';
import 'package:contest_project/core/utiles/all_images.dart';
import 'package:contest_project/core/utiles/styles/all_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TabbarButton extends StatelessWidget {
  final String title;
  final int clicked;
  final int id;
  final Function func;
  const TabbarButton({required this.func, required this.title, required this.clicked, required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        func(id);
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.7,
            color: clicked == id ? AllColors.deepPurple : AllColors.backGrey
          ),
            borderRadius: BorderRadius.circular(151),
            color: clicked == id ? AllColors.deepPurple : AllColors.backWhite
        ),
        child: Row(
          spacing: 5,
          children: [
            Text(
              title,
              style: AllTextStyles.headingTextStyle
                  .copyWith(
                  fontSize: 14,
                  color: clicked == id ? AllColors.backWhite : AllColors.subTextGrey
              ),
            ),
            Visibility(
              visible: id == clicked,
              child: SizedBox(
                height: 16,
                width: 16,
                child: SvgPicture.asset(AllImages.fireIcon, height: 16, width: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
