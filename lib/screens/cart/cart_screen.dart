import 'package:flutter/material.dart';

import 'component/body.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static String routeName = "/cart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
