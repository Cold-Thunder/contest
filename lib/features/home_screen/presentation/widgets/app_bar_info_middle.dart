import 'package:contest_project/core/utiles/all_colors.dart';
import 'package:contest_project/core/utiles/all_images.dart';
import 'package:contest_project/core/utiles/all_texts.dart';
import 'package:contest_project/core/utiles/styles/all_text_styles.dart';
import 'package:contest_project/features/home_screen/presentation/widgets/divider_dot.dart';
import 'package:contest_project/features/home_screen/presentation/widgets/more_info_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarInfoMiddle extends StatelessWidget {
  const AppBarInfoMiddle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      child: Row(
        children: [
          SizedBox(
            height: 16,
            width: 16,
            child: SvgPicture.asset(AllImages.riderIcon, height: 16, width: 16),
          ),
          const SizedBox(width: 5),
          Text(
            AllTexts.freeDelivery,
            style: AllTextStyles.purpleHeadingStyle.copyWith(
              fontSize: 12
            ),
          ),
          DividerDot(),
          // minimum orders
          RichText(
              text:TextSpan(
                  text: AllTexts.minOrder,
                  style: AllTextStyles.productDesTextStyle.copyWith(
                      color: AllColors.ratingTextGrey
                  ),
                  children: [
                    TextSpan(
                        text: " 30 ${AllTexts.priceType}",
                        style: AllTextStyles.productDesTextStyle.copyWith(
                            color: AllColors.sideTextGrey
                        )
                    )
                  ]
              )
          ),
          Spacer(),
          // more info section
          MoreInfoButton()
        ],
      ),
    );
  }
}
