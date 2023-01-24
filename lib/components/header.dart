import 'package:fish_e_commerce/screens/cart/cart_screen.dart';
import 'package:flutter/material.dart';

import '../size_config.dart';
import 'icon_btn_with_counter.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconBtnWithCounter(
                  svgSrc: "assets/icons/Menu.svg",
                  // press: () => Navigator.pushNamed(context, CartScreen.routeName),
                  widthIcon: 14,
                  press: () {},
                ),
                const SizedBox(
                  width: 34,
                )
              ],
            ),
            Text(
              "Home",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(20),
                // height: 1,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            Row(
              children: [
                IconBtnWithCounter(
                  svgSrc: "assets/icons/Buy.svg",
                  numOfitem: 3,
                  widthIcon: 18,
                  press: () {
                    Navigator.pushNamed(context, CartScreen.routeName);
                  },
                ),
                const SizedBox(
                  width: 16,
                ),
                IconBtnWithCounter(
                  svgSrc: "assets/icons/Notification.svg",
                  numOfitem: 3,
                  widthIcon: 18,
                  press: () {},
                )
              ],
            ),
          ],
        ));
  }
}
