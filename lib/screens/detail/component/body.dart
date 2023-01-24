import 'package:fish_e_commerce/components/custom_btn_icon.dart';
import 'package:fish_e_commerce/constants.dart';
import 'package:fish_e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight,
        ),
        Container(
          height: getProportionateScreenHeight(409),
          decoration: const BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                  image: AssetImage("assets/images/fish-cart.png"),
                  fit: BoxFit.cover)),
        ),
        Positioned(
          top: getProportionateScreenHeight(54),
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(24)),
            width: SizeConfig.screenWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIcon(
                    svgIcon: "assets/icons/Arrow-left.svg",
                    iconColor: Colors.white,
                    bgColor: const Color(0xFFFF3C93),
                    press: () {
                      Navigator.of(context).pop();
                    }),
                CustomIcon(
                    svgIcon: "assets/icons/Heart.svg",
                    iconColor: Colors.white,
                    bgColor: const Color(0xFFFF3C93),
                    press: () {}),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            constraints: BoxConstraints(
                minHeight: SizeConfig.screenHeight -
                    getProportionateScreenHeight(409 - 26)),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(26),
                    topLeft: Radius.circular(26)),
                color: Colors.white),
            child: Padding(
                padding: EdgeInsets.only(
                    left: getProportionateScreenWidth(24),
                    right: getProportionateScreenWidth(24),
                    top: getProportionateScreenHeight(36),
                    bottom: getProportionateScreenHeight(16)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 3,
                          width: 22,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xFFFF3B93)),
                        ),
                        const SizedBox(
                          width: 9,
                        ),
                        Container(
                          height: 3,
                          width: 22,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black),
                        ),
                        const SizedBox(
                          width: 9,
                        ),
                        Container(
                          height: 3,
                          width: 22,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(31),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Solid Male",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF8A8A8A)),
                            ),
                            SizedBox(
                              height: getProportionateScreenHeight(3),
                            ),
                            Text(
                              "Moonstar",
                              style: headingStyle,
                            ),
                          ],
                        ),
                        Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                gradient: kPrimaryGradientColor,
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                                child: Text(
                              "3 Month",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12),
                            ))),
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(11),
                    ),
                    SizedBox(
                      height: 8,
                      width: 80,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) =>
                              SvgPicture.asset("assets/icons/Star.svg"),
                          separatorBuilder: (context, index) => const SizedBox(
                                width: 5,
                              ),
                          itemCount: 5),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(11),
                    ),
                    const Text("\$169",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF8A8A8A))),
                    SizedBox(
                      height: getProportionateScreenHeight(17),
                    ),
                    const Text(
                      "Description",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(11),
                    ),
                    RichText(
                      textAlign: TextAlign.justify,
                      text: const TextSpan(
                        text:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisl quam vulputate enim ultricies maecenas sed. Sed in netus venenatis suspendisse tincidunt in metus lectus. Phasellus feugiat quam lorem non morbi laoreet ut ut ac. Platea vivamus elementum sed aliquam, pulvinar est consectetur sollicitudin praesent. Pellentesque viverratiu venenatis vulputate enim ultricies quam... ',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFFA3A3A6),
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Read More',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFFCF1669),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(11),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(right: 11, left: 29),
                          width: getProportionateScreenWidth(218),
                          height: getProportionateScreenHeight(65),
                          decoration: BoxDecoration(
                              gradient: kPrimaryGradientColor,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Add to chart",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12),
                                ),
                                Container(
                                  width: 1,
                                  height: 29,
                                  color: Colors.white,
                                ),
                                CustomIcon(
                                    svgIcon: "assets/icons/Buy-fill.svg",
                                    iconColor: Colors.white,
                                    bgColor: Color(0xFFFF3C93),
                                    press: () {})
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
          ),
        ),
      ],
    );
  }
}
