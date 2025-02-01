import 'package:contest_project/core/utiles/all_colors.dart';
import 'package:contest_project/core/utiles/all_texts.dart';
import 'package:contest_project/core/utiles/styles/all_text_styles.dart';
import 'package:contest_project/features/food_view_screen/presentation/widgets/request_field.dart';
import 'package:flutter/material.dart';

class SpecialRequestSection extends StatelessWidget {
  final TextEditingController _requestTextController = TextEditingController();
  SpecialRequestSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(15),
      width: size.width,
      color: AllColors.backWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: AllTexts.specialReq,
              style: AllTextStyles.headingTextExtraBold.copyWith(
                color: AllColors.specialReqBlack
              ),
              children: [
                TextSpan(
                  text: " (${AllTexts.optional})",
                  style: AllTextStyles.optionalTextStyle
                )
              ]
            ),
          ),
          const SizedBox(height: 10),
          Text(
            AllTexts.subText,
            style: AllTextStyles.productDesTextStyle,
          ),
          const SizedBox(height: 15),
          // request input field
          RequestField(textController: _requestTextController)
        ],
      ),
    );
  }
}
