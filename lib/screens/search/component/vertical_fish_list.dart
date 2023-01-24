import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fish_e_commerce/constants.dart';
import 'package:fish_e_commerce/models/Fish.dart';

import '../../../size_config.dart';

class VerticalFishList extends StatefulWidget {
  @override
  State<VerticalFishList> createState() => _VerticalFishListState();
}

class _VerticalFishListState extends State<VerticalFishList> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.screenHeight,
      child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.only(
              left: getProportionateScreenWidth(24),
              right: getProportionateScreenWidth(24),
              bottom: 24),
          itemBuilder: (context, index) {
            Fish fish = demoFish[index];
            return fish.discountPrice != null
                ? FishCard(
                    name: fish.name,
                    image: fish.image,
                    price: fish.price,
                    discountPrice: fish.discountPrice,
                  )
                : Container();
          },
          separatorBuilder: (context, index) =>
              demoFish[index].discountPrice != null
                  ? SizedBox(
                      height: getProportionateScreenWidth(8),
                    )
                  : const SizedBox(),
          itemCount: demoFish.length),
    );
  }
}

class FishCard extends StatelessWidget {
  const FishCard({
    Key? key,
    required this.name,
    required this.image,
    required this.price,
    required this.discountPrice,
  }) : super(key: key);

  final String name;
  final String image;
  final int price;
  final int? discountPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.only(top: 6, right: 14.4, bottom: 4, left: 4.92),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: getProportionateScreenWidth(62),
            height: getProportionateScreenHeight(63),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: kSecondaryColor),
                textAlign: TextAlign.center,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 57,
                    child: Text(
                      "\$${discountPrice}",
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: kSecondaryColor),
                    ),
                  ),
                  Text("\$${price}",
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFCECECE),
                          decoration: TextDecoration.lineThrough),
                      textAlign: TextAlign.center),
                ],
              ),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFFFF3C93),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/icons/Buy-fill.svg",
                      width: 16,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
