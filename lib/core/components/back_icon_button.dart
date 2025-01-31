import 'package:contest_project/core/utiles/all_colors.dart';
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
        height: 24,
        width: 24,
        child: SvgPicture.asset(AllImages.backIcon, height: 24, width: 24)
      )
    );
  }
}
