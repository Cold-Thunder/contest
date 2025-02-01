import 'package:contest_project/core/components/add_to_cart_section.dart';
import 'package:contest_project/core/utiles/all_colors.dart';
import 'package:contest_project/core/utiles/all_images.dart';
import 'package:contest_project/core/utiles/all_texts.dart';
import 'package:contest_project/core/utiles/styles/all_text_styles.dart';
import 'package:flutter/material.dart';

class BottomSheetShow extends StatefulWidget {
  const BottomSheetShow({super.key});

  @override
  State<BottomSheetShow> createState() => _BottomSheetShowState();
}

class _BottomSheetShowState extends State<BottomSheetShow> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DraggableScrollableSheet(
      minChildSize: 0,
      initialChildSize: 441/size.height,
      maxChildSize: 1,
      builder: (context, controller){
        return  SingleChildScrollView(
          controller: controller,
          child: Container(
            height: size.height > 511 ? size.height : 511,
            decoration: BoxDecoration(
              color: AllColors.backWhite,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // top image section
                SizedBox(
                  width: size.width,
                  height: 208,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      // image container
                      Container(
                        height: 208,
                        width: size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            ),
                            image: DecorationImage(
                                image: AssetImage(AllImages.foodImage),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      // top bar
                      Container(
                          margin: const EdgeInsets.only(top: 5),
                          height: 6,
                          width: 73,
                          decoration: BoxDecoration(
                              color: AllColors.barGrey,
                              borderRadius: BorderRadius.circular(96.15)
                          )
                      )
                    ],
                  ),
                ),
                // item name
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Text(
                        AllTexts.foodTitle,
                        style: AllTextStyles.headingTextStyle
                    )
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                      AllTexts.itemDes,
                      style: AllTextStyles.productDesTextStyle,
                      maxLines: 8,
                      overflow: TextOverflow.ellipsis
                  ),
                ),
                const SizedBox(height:20),
                AddToCartSection()
              ],
            ),
          ),
        );
      }
    );
  }
}
