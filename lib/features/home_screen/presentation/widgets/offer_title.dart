import 'package:contest_project/core/utiles/all_colors.dart';
import 'package:contest_project/core/utiles/all_images.dart';
import 'package:contest_project/core/utiles/all_texts.dart';
import 'package:contest_project/core/utiles/styles/all_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OfferTitle extends StatelessWidget {
  const OfferTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      height: 84,
      width: 230,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: 60,
            width: 230,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              image: DecorationImage(
                  image: AssetImage(
                    AllImages.backImage,
                  ),
                  fit: BoxFit.cover),
            ),
            child: Row(
              spacing: 10,
              children: [
                SizedBox(
                  height: 20,
                  width: 20,
                  child: SvgPicture.asset(AllImages.percentIcon,
                      height: 20, width: 20),
                ),
                Text(
                  AllTexts.offer,
                  style: AllTextStyles.headingTextStyle
                      .copyWith(color: AllColors.backWhite),
                ),
                Text(
                  AllTexts.offerPrice,
                  style: AllTextStyles.productDesTextStyle.copyWith(
                    color: AllColors.changeButtonGrey
                  )
                )
              ],
            ),
          ),
          // bottom section
          Container(
              height: 24,
              width: 230,
              decoration: BoxDecoration(
                  color: AllColors.titleDeepPurple,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 5,
                children: [
                  SizedBox(
                      height: 12,
                      width: 12,
                      child: SvgPicture.asset(AllImages.whiteRider,
                          height: 12, width: 12)),
                  Text(AllTexts.freeDelivery,
                      style: AllTextStyles.titleFreeTextStyle)
                ],
              ))
        ],
      ),
    );
  }
}
