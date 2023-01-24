import 'package:flutter/material.dart';
import 'package:fish_e_commerce/constants.dart';
import 'package:fish_e_commerce/models/Categories.dart';

import '../../../size_config.dart';

class Categories extends StatefulWidget {
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(24),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
          itemBuilder: (context, index) {
            Category category = demoCategories[index];
            return GestureDetector(
              onTap: () {
                setState(() {
                  activeIndex = index;
                });
              },
              child: Text(category.name,
                  style: TextStyle(
                    fontSize: 14,
                    decoration:
                        index == activeIndex ? TextDecoration.underline : null,
                    decorationColor: kPrimaryColor,
                    decorationThickness: 3,
                    color: Colors.transparent,
                    shadows: [
                      Shadow(
                          offset: Offset(0, -4),
                          color:
                              index == activeIndex ? kPrimaryColor : kTextColor)
                    ],
                  ),
                  textAlign: TextAlign.center),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
                width: getProportionateScreenWidth(42),
              ),
          itemCount: demoCategories.length),
    );
  }
}
