import 'package:contest_project/core/utiles/all_colors.dart';
import 'package:contest_project/core/utiles/all_texts.dart';
import 'package:contest_project/core/utiles/styles/all_text_styles.dart';
import 'package:contest_project/features/food_view_screen/presentation/widgets/radio_menu_item.dart';
import 'package:flutter/material.dart';

class VeriationSection extends StatefulWidget {
  const VeriationSection({super.key});

  @override
  State<VeriationSection> createState() => _VeriationSectionState();
}

class _VeriationSectionState extends State<VeriationSection> {
  String _groupValue = '1:1';

  radioButtonFunc(String value){
    setState((){
      _groupValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
      width: size.width,
      height: 213,
      color: AllColors.backWhite,
      child: Container(
          height: 198,
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AllColors.lightPurple,
          border: Border.all(
            width: 1,
            color: AllColors.deepPurple
          )
        ),
        child: Column(
          children: [
            // heading section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    AllTexts.addVariation,
                    style: AllTextStyles.headingTextExtraBold
                ),
                Text(
                  AllTexts.required,
                  style: AllTextStyles.headingTextStyle.copyWith(
                    fontSize: 12,
                    color: AllColors.deepPurple
                  )
                )
              ]
            ),
            const SizedBox(height: 5),
            RadioMenuItem(groupValue: _groupValue, value: AllTexts.variationOne, func: radioButtonFunc, price: AllTexts.priceOne),
            RadioMenuItem(groupValue: _groupValue, value: AllTexts.variationTwo, func: radioButtonFunc, price: AllTexts.priceTwo),
            RadioMenuItem(groupValue: _groupValue, value: AllTexts.variationThree, func: radioButtonFunc, price: AllTexts.priceThree),

          ],
        )
      )
    );
  }
}
