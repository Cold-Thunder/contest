import 'package:contest_project/core/utiles/all_colors.dart';
import 'package:contest_project/core/utiles/all_images.dart';
import 'package:contest_project/core/utiles/all_texts.dart';
import 'package:contest_project/core/utiles/styles/all_text_styles.dart';
import 'package:contest_project/features/home_screen/presentation/widgets/divider_dot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarInfoSection extends StatelessWidget {
  const AppBarInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // delivery time section
          Row(
            spacing: 3,
            children: [
              SizedBox(
                height: 16,
                width: 16,
                child: SvgPicture.asset(AllImages.clockIcon, height: 16, width: 16),
              ),
              RichText(
                text:TextSpan(
                  text: AllTexts.delivery,
                  style: AllTextStyles.productDesTextStyle.copyWith(
                    color: AllColors.ratingTextGrey
                  ),
                  children: [
                    TextSpan(
                      text: ' 15-25 mins',
                      style: AllTextStyles.productDesTextStyle.copyWith(
                        color: AllColors.sideTextGrey
                      )
                    )
                  ]
                )
              )
            ],
          ),
        DividerDot(),
          // distance
          Row(
            spacing: 3,
            children: [
              SizedBox(
                height: 16,
                width: 16,
                child: SvgPicture.asset(AllImages.navIcon, height: 16, width: 16),
              ),
              RichText(
                  text:TextSpan(
                      text: '2 km ',
                      style: AllTextStyles.productDesTextStyle.copyWith(
                          color: AllColors.sideTextGrey
                      ),
                      children: [
                        TextSpan(
                            text: AllTexts.away,
                            style: AllTextStyles.productDesTextStyle.copyWith(
                                color: AllColors.ratingTextGrey
                            )
                        )
                      ]
                  )
              )
            ],
          ),
          Spacer(),
          Text(
            AllTexts.review,
            style: AllTextStyles.purpleHeadingStyle
          )
        ],
      ),
    );
  }
}
