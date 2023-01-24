import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import '../size_config.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key? key,
    required this.svgSrc,
    this.numOfitem = 0,
    required this.press,
    required this.widthIcon,
  }) : super(key: key);

  final String svgSrc;
  final int numOfitem;
  final GestureTapCallback press;
  final double widthIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: press,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: getProportionateScreenWidth(37),
            width: getProportionateScreenWidth(37),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: SvgPicture.asset(
                svgSrc,
                width: getProportionateScreenWidth(widthIcon),
              ),
            ),
          ),
          if (numOfitem != 0)
            Positioned(
              top: 6,
              right: 4,
              child: Container(
                height: getProportionateScreenWidth(12),
                width: getProportionateScreenWidth(12),
                decoration: const BoxDecoration(
                  gradient: kPrimaryGradientColor,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    "$numOfitem",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(7),
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
