import 'package:contest_project/core/components/add_to_cart_button.dart';
import 'package:contest_project/core/utiles/all_colors.dart';
import 'package:contest_project/core/utiles/all_images.dart';
import 'package:contest_project/core/utiles/all_texts.dart';
import 'package:contest_project/core/utiles/styles/all_text_styles.dart';
import 'package:contest_project/features/food_view_screen/presentation/widgets/change_button.dart';
import 'package:flutter/material.dart';

class AddToCartSection extends StatefulWidget {
  const AddToCartSection({super.key});

  @override
  State<AddToCartSection> createState() => _AddToCartSectionState();
}

class _AddToCartSectionState extends State<AddToCartSection> {
  int price = 120;
  int count = 1;

  increaseFunc() {
    setState(() {
      count++;
    });
  }

  decreaseFunc() {
    if (count > 0) {
      setState(() {
        count--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(15),
      width: size.width,
      height: 130,
      color: AllColors.backWhite,
      child: Column(
        children: [
          // price section
          Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AllColors.totalLightPurple,
                ),
                child: RichText(
                  text: TextSpan(
                    text: "${AllTexts.priceType} $count",
                    style: AllTextStyles.headingTextStyle
                        .copyWith(color: AllColors.deepPurple),
                    children: [
                      TextSpan(
                          text: " ($count item)",
                          style: AllTextStyles.sizeTextStyle)
                    ],
                  ),
                ),
              ),
              Spacer(),
              // increase and decrease section
              Row(
                children: [
                  ChangeButton(
                    changeFunc: decreaseFunc,
                    iconSvg: AllImages.deleteIcon,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 34,
                    width: 34,
                    child: Text(
                      count.toString(),
                      style:
                          AllTextStyles.headingTextStyle.copyWith(fontSize: 24),
                    ),
                  ),
                  ChangeButton(
                    changeFunc: increaseFunc,
                    iconSvg: AllImages.addIcon,
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          // add to cart elevated button
          AddToCartButton()
        ],
      ),
    );
  }
}
