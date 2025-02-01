import 'package:contest_project/core/utiles/all_colors.dart';
import 'package:contest_project/core/utiles/all_images.dart';
import 'package:contest_project/core/utiles/all_texts.dart';
import 'package:contest_project/core/utiles/routes_helper.dart';
import 'package:contest_project/core/utiles/styles/all_text_styles.dart';
import 'package:contest_project/features/home_screen/presentation/widgets/buttom_sheet_show.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemElement extends StatelessWidget {
  final bool hasVariation;

  const ItemElement({required this.hasVariation, super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        if(hasVariation){
          Navigator.pushNamed(context, RoutesHelper.foodViewScreen);
        }else{
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            barrierColor: AllColors.transparent,
            barrierLabel: 'bottom sheet',
            backgroundColor: AllColors.transparent18,
            builder: (context) {
              return BottomSheetShow();
            },
          );
        }
      },
      splashColor: AllColors.transparent,
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 114,
        width: size.width,
        decoration: BoxDecoration(
            color: AllColors.backWhite,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 0.66, color: AllColors.backGrey)),
        child: Row(
          spacing: 15,
          children: [
            Container(
              height: 98,
              width: 92,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(
                    image: AssetImage(AllImages.foodImage), fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  // top heading
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AllTexts.foodTitle,
                        style: AllTextStyles.headingTextStyle
                            .copyWith(fontSize: 13.23),
                      ),
                      Container(
                        // height: 15,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        decoration: BoxDecoration(
                            color: AllColors.lightOrange,
                            borderRadius: BorderRadius.circular(7.65)),
                        child: Row(
                          spacing: 5,
                          children: [
                            SizedBox(
                                height: 11.34,
                                width: 11.34,
                                child: SvgPicture.asset(AllImages.starIcon,
                                    height: 11.34, width: 11.34)),
                            Text(
                              '4.5',
                              style: AllTextStyles.optionalTextStyle.copyWith(
                                  fontSize: 8.5, color: AllColors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  // des
                  Text(
                    AllTexts.itemDes,
                    style: AllTextStyles.productDesTextStyle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5),
                  Row(
                    spacing: 5,
                    children: [
                      SizedBox(
                          height: 7,
                          width: 7,
                          child: SvgPicture.asset(AllImages.fireIcon,
                              height: 7, width: 7)),
                      Text(
                        AllTexts.popular,
                        style: AllTextStyles.countTextStyle
                            .copyWith(color: AllColors.black),
                      )
                    ],
                  ),
                  Spacer(),
                  // bottom section
                  Row(
                    spacing: 5,
                    children: [
                      Text(
                        AllTexts.priceOne,
                        style: AllTextStyles.ratingCountTextStyle
                            .copyWith(color: AllColors.deepPurple),
                      ),
                      Text(
                        AllTexts.priceFour,
                        style: AllTextStyles.ratingCountTextStyle.copyWith(
                          color: AllColors.subTextGrey,
                          decoration: TextDecoration.lineThrough
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: (){

                        },
                        child: SizedBox(
                          height: 15,
                          width: 15,
                          child: SvgPicture.asset(AllImages.addPurpleIcon, height: 15, width:15)
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
