import 'package:fish_e_commerce/components/custom_btn_icon.dart';
import 'package:fish_e_commerce/constants.dart';
import 'package:fish_e_commerce/screens/cart/component/list_cart.dart';
import 'package:fish_e_commerce/screens/cart/component/payment_detail.dart';
import 'package:fish_e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../models/Fish.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(24)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIcon(
                    svgIcon: "assets/icons/Arrow-left.svg",
                    iconColor: Colors.black,
                    bgColor: Colors.white,
                    press: Navigator.of(context).pop),
                Text(
                  "Cart",
                  style: headingStyle,
                ),
                const SizedBox(
                  width: 32,
                )
              ],
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(45),
          ),
          Expanded(child: ListCart()),
          PaymentDetail()
        ],
      ),
    );
  }
}
