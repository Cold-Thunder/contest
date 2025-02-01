import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarActionButton extends StatelessWidget {
  final String icon;
  final Function? func;

  const AppBarActionButton({required this.icon, this.func, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if(func != null){
          func!();
        }
      },
      child: Container(
        padding: const EdgeInsets.all(2),
        height: 24,
          width: 24,
        child: SvgPicture.asset(icon, height: 24, width: 24,)
      )
    );
  }
}
