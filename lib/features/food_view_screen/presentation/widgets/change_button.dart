import 'package:contest_project/core/utiles/all_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChangeButton extends StatelessWidget {
  final Function changeFunc;
  final String iconSvg;
  
  const ChangeButton({required this.changeFunc, required this.iconSvg, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        changeFunc();
      },
      child: Container(
        alignment: Alignment.center,
        height: 34,
        width: 34,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: AllColors.changeButtonGrey
        ),
        child: SvgPicture.asset(iconSvg, height: 18, width: 18)
      ),
    );
  }
}
