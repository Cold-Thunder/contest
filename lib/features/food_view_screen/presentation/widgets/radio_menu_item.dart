import 'package:contest_project/core/utiles/all_colors.dart';
import 'package:contest_project/core/utiles/all_texts.dart';
import 'package:contest_project/core/utiles/styles/all_text_styles.dart';
import 'package:flutter/material.dart';

class RadioMenuItem extends StatelessWidget {
  final String groupValue;
  final String value;
  final Function func;
  final String price;
  const RadioMenuItem({required this.groupValue, required this.value, required this.func, required this.price, super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      child: Row(
        children: [
          Radio(
            value: value,
            groupValue: groupValue,
            onChanged: (value){
              func(value);
            },
            overlayColor: WidgetStateProperty.resolveWith((state){
                if(state.isEmpty){
                  return AllColors.sideTextGrey;
                }else if(state.isNotEmpty){
                  // return AllColors.deepPurple;
                }
            }),
            activeColor: AllColors.deepPurple,
          ),
          Text(value, style: AllTextStyles.sizeTextStyle),
          Spacer(),
          Text(price, style: AllTextStyles.headingTextStyle.copyWith(
            fontSize: 14
          ),)
        ],
      ),
    );
  }
}
