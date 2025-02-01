import 'package:contest_project/core/components/custom_divider.dart';
import 'package:contest_project/core/utiles/all_colors.dart';
import 'package:contest_project/core/utiles/all_images.dart';
import 'package:contest_project/core/utiles/all_texts.dart';
import 'package:contest_project/core/utiles/styles/all_text_styles.dart';
import 'package:contest_project/features/home_screen/presentation/widgets/app_bar_info_middle.dart';
import 'package:contest_project/features/home_screen/presentation/widgets/app_bar_info_section.dart';
import 'package:contest_project/features/home_screen/presentation/widgets/item_element.dart';
import 'package:contest_project/features/home_screen/presentation/widgets/tabbar_button.dart';
import 'package:contest_project/features/home_screen/presentation/widgets/vertical_offer_title_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarContentSection extends StatefulWidget {
  AppBarContentSection({super.key});

  @override
  State<AppBarContentSection> createState() => _AppBarContentSectionState();
}

class _AppBarContentSectionState extends State<AppBarContentSection> {
  List<String> items = AllTexts.items;

  int clicked = 0;

  clickedButton(int index) {
    setState(() {
      clicked = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: BoxDecoration(
          color: AllColors.backWhite,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
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
          Visibility(
            visible: true,
            child: Container(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return TabbarButton(
                    func: clickedButton,
                    title: items[index],
                    clicked: clicked,
                    id: index,
                  );
                },
              ),
            ),
          ),
          CustomDivider(),
        ],
      ),
    );
  }
}
