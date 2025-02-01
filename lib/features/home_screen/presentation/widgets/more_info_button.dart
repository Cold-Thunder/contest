import 'package:contest_project/core/utiles/all_colors.dart';
import 'package:contest_project/core/utiles/all_images.dart';
import 'package:contest_project/core/utiles/all_texts.dart';
import 'package:contest_project/core/utiles/styles/all_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MoreInfoButton extends StatelessWidget {
  const MoreInfoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
      },
      radius: 30,
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
          height: 19,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                  width: 0.5,
                  color: AllColors.backGrey
              )
          ),
          child: Row(
            spacing: 5,
            children: [
              SizedBox(
                  height: 12,
                  width: 12,
                  child: SvgPicture.asset(AllImages.infoIcon, height: 12, width: 12)
              ),
              Text(
                AllTexts.moreInfo,
                style: AllTextStyles.optionalTextStyle.copyWith(
                    fontSize: 10
                ),
              )
            ],
          )
      ),
    );
  }
}
