import 'package:contest_project/features/home_screen/presentation/widgets/offer_title.dart';
import 'package:flutter/material.dart';

class VerticalOfferTitleSection extends StatelessWidget {
  const VerticalOfferTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(left: 15),
      child: SizedBox(
        height: 84,
        width: size.width,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 2,
          itemBuilder: (context, index) {
            return OfferTitle();
          },
        ),
      ),
    );
  }
}
