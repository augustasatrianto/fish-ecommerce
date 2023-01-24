import 'package:fish_e_commerce/components/custom_btn_icon.dart';
import 'package:fish_e_commerce/constants.dart';
import 'package:flutter/material.dart';

import '../../../models/Fish.dart';
import '../../../size_config.dart';

class PaymentDetail extends StatelessWidget {
  const PaymentDetail({super.key});

  @override
  Widget build(BuildContext context) {
    int totalCost = 0;
    return Container(
      padding: EdgeInsets.fromLTRB(
          getProportionateScreenWidth(22),
          getProportionateScreenHeight(11),
          getProportionateScreenWidth(22),
          getProportionateScreenHeight(21)),
      width: SizeConfig.screenWidth,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Payment Detail"),
          SizedBox(
            height: getProportionateScreenHeight(7),
          ),
          Container(
            height: 100,
            constraints: const BoxConstraints(maxHeight: 180),
            child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: ((context, index) {
                  Fish fish = demoFish[index];

                  if (fish.id >= 6 && fish.id <= 8) {
                    totalCost = totalCost + fish.price;
                  }
                  return fish.id >= 6 && fish.id <= 8
                      ? Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  fish.name,
                                  style: TextStyle(
                                      color: Color(0xFF8A8A8A),
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10),
                                ),
                                Text(
                                  "\$${fish.price}",
                                  style: TextStyle(
                                      color: Color(0xFF8A8A8A),
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10),
                                ),
                              ],
                            ),
                            index == demoFish.length - 1
                                ? Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Total (${3} Tails)",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "\$${totalCost}",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  )
                                : const SizedBox()
                          ],
                        )
                      : const SizedBox();
                }),
                separatorBuilder: (context, index) =>
                    index + 1 >= 6 && index + 1 <= 8
                        ? Divider(
                            height: 0,
                            color: Color(0xFFEFEFEF),
                            thickness: 1,
                          )
                        : const SizedBox(),
                itemCount: demoFish.length),
          ),
          Container(
            width: getProportionateScreenWidth(330),
            height: getProportionateScreenHeight(65),
            decoration: BoxDecoration(
                gradient: kPrimaryGradientColor,
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomIcon(
                    svgIcon: "assets/icons/Delivery.svg",
                    iconColor: Colors.white,
                    bgColor: Color(0xFFFF3C93),
                    press: () {}),
                Text(
                  "Choose Delivery Services",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                Container(
                  height: 29,
                  width: 1,
                  color: Colors.white,
                ),
                CustomIcon(
                    svgIcon: "assets/icons/Arrow-right.svg",
                    iconColor: Colors.white,
                    bgColor: Color(0xFFFF3C93),
                    press: () {}),
              ],
            ),
          )
        ],
      ),
    );
  }
}
