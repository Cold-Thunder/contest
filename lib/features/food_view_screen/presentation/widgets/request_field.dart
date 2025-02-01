import 'package:contest_project/core/utiles/all_colors.dart';
import 'package:contest_project/core/utiles/all_texts.dart';
import 'package:contest_project/core/utiles/styles/all_text_styles.dart';
import 'package:flutter/material.dart';

class RequestField extends StatefulWidget {
  final TextEditingController textController;
  const RequestField({required this.textController, super.key});

  @override
  State<RequestField> createState() => _RequestFieldState();
}

class _RequestFieldState extends State<RequestField> {

  int textLength =0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: 78,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        spacing: 3,
        children: [
          SizedBox(
            height: 64,
            child: TextField(
              controller: widget.textController,
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.top,
              maxLines: 5,
              onChanged: (value){
                setState(() {
                  textLength = value.length;
                });
              },
              decoration: InputDecoration(
                hintText: AllTexts.exampleText,
                hintStyle: AllTextStyles.hintTextStyle,
                contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    width: 1,
                    color: textLength <= 500 ? AllColors.hintGrey : AllColors.red
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    width: 1,
                    color: AllColors.hintGrey
                  )
                )
              )
            ),
          ),
          Text(
            '$textLength/ ${AllTexts.textCount}',
            style: AllTextStyles.countTextStyle
          )
        ],
      )
    );
  }
}
