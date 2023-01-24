import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../models/Fish.dart';
import '../../../size_config.dart';

class ListCart extends StatelessWidget {
  const ListCart({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: ((context, index) {
          Fish fish = demoFish[index];
          return fish.id >= 6 && fish.id <= 8
              ? Container(
                  margin: EdgeInsets.only(
                      left: getProportionateScreenHeight(25),
                      right: getProportionateScreenWidth(19)),
                  padding: const EdgeInsets.all(15),
                  width: 331,
                  height: 127,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Container(
                        height: 96,
                        width: 96,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: const Color(0xFFEEEFF4),
                            image: DecorationImage(
                                image: AssetImage(fish.image),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(16),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  fish.name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                                ),
                                Text(
                                  fish.alias,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                      color: Color(0xFF8A8A8A)),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$${fish.price}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Color(0xFF8A8A8A)),
                                ),
                                Container(
                                    width: 82,
                                    height: 33,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFEEEFF4),
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          height: 17,
                                          width: 17,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                          child: Center(
                                            child: SvgPicture.asset(
                                                "assets/icons/Minus.svg"),
                                          ),
                                        ),
                                        const Text(
                                          "1",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16),
                                        ),
                                        Container(
                                          height: 17,
                                          width: 17,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                          child: Center(
                                            child: SvgPicture.asset(
                                                "assets/icons/Plus.svg"),
                                          ),
                                        ),
                                      ],
                                    ))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              : const SizedBox();
        }),
        separatorBuilder: (context, index) => index + 1 >= 6 && index + 1 <= 8
            ? SizedBox(
                height: getProportionateScreenHeight(25),
              )
            : const SizedBox(),
        itemCount: demoFish.length);
  }
}

class ListCartCard extends StatelessWidget {
  const ListCartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
