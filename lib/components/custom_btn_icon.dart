import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon(
      {super.key,
      required this.svgIcon,
      required this.iconColor,
      required this.bgColor,
      required this.press});
  final String svgIcon;
  final Color iconColor;
  final Color bgColor;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: bgColor,
        ),
        child: Center(
          child: SvgPicture.asset(
            svgIcon,
            color: iconColor,
            width: 16,
          ),
        ),
      ),
    );
  }
}
