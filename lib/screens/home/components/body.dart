import 'package:fish_e_commerce/screens/home/components/lowest_prices.dart';
import 'package:fish_e_commerce/screens/home/components/most_popular.dart';
import 'package:flutter/cupertino.dart';

import '../../../size_config.dart';
import '../../../components/header.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: getProportionateScreenHeight(20)),
        Header(),
        SizedBox(height: getProportionateScreenHeight(50)),
        MostPopular(),
        SizedBox(height: getProportionateScreenHeight(39)),
        LowestPrices(),
        SizedBox(height: getProportionateScreenHeight(24)),
      ],
    );
  }
}
