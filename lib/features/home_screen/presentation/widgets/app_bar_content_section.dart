
import 'package:contest_project/core/utiles/all_colors.dart';
import 'package:contest_project/core/utiles/all_images.dart';
import 'package:contest_project/core/utiles/all_texts.dart';
import 'package:contest_project/core/utiles/styles/all_text_styles.dart';
import 'package:contest_project/features/home_screen/presentation/widgets/app_bar_info_middle.dart';
import 'package:contest_project/features/home_screen/presentation/widgets/app_bar_info_section.dart';
import 'package:contest_project/features/home_screen/presentation/widgets/tabbar_section.dart';
import 'package:contest_project/features/home_screen/presentation/widgets/vertical_offer_title_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarContentSection extends StatefulWidget {
  final int clicked;
  final Function clickedFunc;
  const AppBarContentSection({required this.clicked, required this.clickedFunc, super.key});

  @override
  State<AppBarContentSection> createState() => _AppBarContentSectionState();
}

class _AppBarContentSectionState extends State<AppBarContentSection> {
  final List<String> items = AllTexts.items;



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        color: AllColors.backWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: [
                Text(AllTexts.foodTitle, style: AllTextStyles.headingTextStyle),
                const SizedBox(width: 4),
                SizedBox(
                    height: 16,
                    width: 16,
                    child: SvgPicture.asset(AllImages.infoIcon,
                        height: 16, width: 16)),
                Spacer(),
                // rating section
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // rating row
                    Row(
                      spacing: 3,
                      children: [
                        SizedBox(
                            height: 18,
                            width: 18,
                            child: SvgPicture.asset(
                              AllImages.starIcon,
                              height: 18,
                              width: 18,
                            )),
                        Text(AllTexts.rating,
                            style: AllTextStyles.ratingCountTextStyle)
                      ],
                    ),
                    Text('2k+ ratings', style: AllTextStyles.ratingTextStyle)
                  ],
                )
              ],
            ),
          ),
          AppBarInfoSection(),
          AppBarInfoMiddle(),
          const SizedBox(
            height: 12,
          ),
          // vertical offer tiles section
          VerticalOfferTitleSection(),
          const SizedBox(height: 12),

          // bottom tabbar section
          Padding(
            padding: const EdgeInsets.only(right:15.0, bottom: 20),
            child: TabbarSection(clicked: widget.clicked, items: items, clickedButton: widget.clickedFunc),
          )
        ],
      ),
    );
  }
}
