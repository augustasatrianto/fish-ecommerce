import 'package:fish_e_commerce/screens/detail/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:fish_e_commerce/models/Fish.dart';

import '../../../size_config.dart';

class HorizontalFishList extends StatefulWidget {
  @override
  State<HorizontalFishList> createState() => _HorizontalFishListState();
}

class _HorizontalFishListState extends State<HorizontalFishList> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(215),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
          itemBuilder: (context, index) {
            Fish fish = demoFish[index];
            return FishCard(
              name: fish.name,
              image: fish.image,
              price: fish.price,
            );
          },
          separatorBuilder: (context, index) => SizedBox(
                width: getProportionateScreenWidth(15),
              ),
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
  }) : super(key: key);

  final String name;
  final String image;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: getProportionateScreenWidth(122),
          height: getProportionateScreenHeight(146),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        ),
        SizedBox(
          height: getProportionateScreenHeight(16),
        ),
        Text(name,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center),
        SizedBox(
          height: getProportionateScreenHeight(4),
        ),
        Text("\$${price}",
            style: const TextStyle(fontSize: 12, color: Color(0xFF8A8A8A)),
            textAlign: TextAlign.center),
        InkWell(
          onTap: () => Navigator.pushNamed(context, DetailScreen.routeName),
          child: const Text("more detail",
              style: TextStyle(fontSize: 9, color: Color(0xFFF63149)),
              textAlign: TextAlign.center),
        ),
      ],
    );
  }
}
