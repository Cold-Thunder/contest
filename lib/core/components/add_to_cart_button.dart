import 'package:contest_project/core/utiles/all_colors.dart';
import 'package:contest_project/core/utiles/all_images.dart';
import 'package:contest_project/core/utiles/all_texts.dart';
import 'package:contest_project/core/utiles/styles/all_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          ElevatedButton(
            onPressed: () {


            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AllColors.deepPurple,
              minimumSize: Size(double.infinity, 50),
            ),
            child: Text(AllTexts.addToCart,
                style: AllTextStyles.headingTextStyle
                    .copyWith(fontSize: 14, color: AllColors.backWhite)),
          ),
          // message icon
          InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              padding: const EdgeInsets.all(2),
              height: 24,
              width: 24,
              child:
                  SvgPicture.asset(AllImages.mailIcon, height: 24, width: 24),
            ),
          )
        ],
      ),
    );
  }
}
