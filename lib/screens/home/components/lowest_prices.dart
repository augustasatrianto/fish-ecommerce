import 'package:fish_e_commerce/constants.dart';
import 'package:fish_e_commerce/models/Fish.dart';
import 'package:fish_e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LowestPrices extends StatelessWidget {
  const LowestPrices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: getProportionateScreenWidth(24)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Lowest Prices",
                style: headingStyle,
              ),
              IconButton(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  padding: const EdgeInsets.only(right: 24),
                  alignment: Alignment.centerRight,
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/icons/Arrow-right.svg")),
            ],
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        SizedBox(
          height: getProportionateScreenHeight(200),
          child: ListView.separated(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(24)),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Fish fish = demoFish[index];
                return LowestPricesCard(
                  name: fish.name,
                  image: fish.image,
                  price: fish.price,
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                    width: 25,
                  ),
              itemCount: 2),
        )
      ],
    );
  }
}

class LowestPricesCard extends StatelessWidget {
  const LowestPricesCard({
    super.key,
    required this.name,
    required this.image,
    required this.price,
  });

  final String name;
  final String image;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(186),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          color: Colors.white,
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: getProportionateScreenHeight(12),
          ),
          Text(
            name,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          SizedBox(
            height: getProportionateScreenHeight(5),
          ),
          Text(
            "\$${price}",
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(5),
          ),
        ],
      ),
    );
  }
}
