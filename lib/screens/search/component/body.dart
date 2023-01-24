import 'package:flutter/material.dart';
import 'package:fish_e_commerce/constants.dart';
import 'package:fish_e_commerce/screens/search/component/categories.dart';
import 'package:fish_e_commerce/screens/search/component/horizontal_fish_list.dart';
import 'package:fish_e_commerce/components/header.dart';
import 'package:fish_e_commerce/screens/search/component/vertical_fish_list.dart';
import 'package:fish_e_commerce/size_config.dart';

import 'search_field.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            Header(),
            SizedBox(height: getProportionateScreenHeight(29)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(24)),
              child: Text("Discover", style: headingStyle),
            ),
            SizedBox(height: getProportionateScreenHeight(18)),
            SearchField(),
            SizedBox(height: getProportionateScreenHeight(25)),
            Categories(),
            SizedBox(height: getProportionateScreenHeight(14)),
            HorizontalFishList(),
            SizedBox(height: getProportionateScreenHeight(20)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(24)),
              child: Text("Discount and Promo", style: headingStyle),
            ),
            SizedBox(height: getProportionateScreenHeight(17)),
            VerticalFishList(),
          ],
        ),
      ),
    );
  }
}
