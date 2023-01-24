import 'package:flutter/material.dart';

import 'component/body.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});
  static String routeName = "/detail";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
