import 'package:fish_e_commerce/constants.dart';
import 'package:fish_e_commerce/models/Fish.dart';
import 'package:fish_e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MostPopular extends StatelessWidget {
  const MostPopular({super.key});

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
                "Most Popular",
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
          height: getProportionateScreenHeight(386),
          child: ListView.separated(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(24)),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Fish fish = demoFish[index];
                return index == 6 || index == 7
                    ? MostPopularCard(
                        name: fish.name,
                        alias: fish.alias,
                        image: fish.image,
                        age: "3 Month",
                        price: fish.price,
                        index: index - 5,
                      )
                    : const SizedBox();
              },
              separatorBuilder: (context, index) => index == 6 || index == 7
                  ? SizedBox(
                      width: 25,
                    )
                  : SizedBox(),
              itemCount: 8),
        )
      ],
    );
  }
}

class MostPopularCard extends StatelessWidget {
  const MostPopularCard(
      {super.key,
      required this.name,
      required this.alias,
      required this.image,
      required this.age,
      required this.price,
      required this.index});

  final String name;
  final String alias;
  final String image;
  final String age;
  final int price;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: getProportionateScreenHeight(50),
          child: Container(
            width: getProportionateScreenWidth(186),
            height: getProportionateScreenHeight(336),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(16)),
          ),
        ),
        SizedBox(
          width: getProportionateScreenWidth(186),
          child: Image.asset(
            "assets/images/fish-most-popular-${index}.png",
          ),
        ),
        Positioned(
          top: getProportionateScreenHeight(209),
          left: 19,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      gradient: kPrimaryGradientColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                      child: Text(
                    age,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 12),
                  ))),
              SizedBox(
                height: getProportionateScreenHeight(12),
              ),
              Text(
                name,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: getProportionateScreenHeight(5),
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
                height: getProportionateScreenHeight(31),
              ),
              Text(
                alias,
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: getProportionateScreenHeight(2),
              ),
              Text(
                "\$${price}",
                style: const TextStyle(fontSize: 12, color: Color(0xFF8A8A8A)),
              )
            ],
          ),
        )
      ],
    );
  }
}
