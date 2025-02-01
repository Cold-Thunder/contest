import 'package:contest_project/core/utiles/all_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackIconButton extends StatelessWidget {
  const BackIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pop(context);
      },
        radius: 12,
      child: Container(
        padding: const EdgeInsets.all(13),
        height: 24,
        width: 24,
        child: SvgPicture.asset(AllImages.backIcon, height: 10, width: 16)
      )
    );
  }
}
