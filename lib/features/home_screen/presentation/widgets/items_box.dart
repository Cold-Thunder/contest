import 'package:contest_project/core/utiles/styles/all_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemsBox extends StatelessWidget {
  final String title;
  final String icon;
  final List items;

  const ItemsBox(
      {required this.title,
      required this.icon,
      required this.items,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        children: [
          Row(
            children: [
              Text(title, style: AllTextStyles.headingTextExtraBold),
              SizedBox(
                height: 16,
                width: 16,
                child: SvgPicture.asset(icon, height: 16, width: 16),
              )
            ],
          ),
          ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) {
                return SizedBox(height: 15);
              },
              itemCount: items.length,
              itemBuilder: (context, index) {
                return items[index];
              }),
        ],
      ),
    );
  }
}
