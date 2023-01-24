import 'package:fish_e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../screens/home/home_screens.dart';
import '../screens/search/search_screens.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _setectedIndex = 0;

  String dataku = 'anying';

  final tabs = [
    const HomeScreen(),
    const SearchScreen(),
    const HomeScreen(),
    const SearchScreen(),
    const SearchScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: tabs[_setectedIndex],
      bottomNavigationBar: Container(
        height: getProportionateScreenHeight(80),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavigationItem(0, 'assets/icons/Home-bottom-active.svg',
                'assets/icons/Home-bottom.svg'),
            buildNavigationItem(1, 'assets/icons/Search-bottom-active.svg',
                'assets/icons/Search-bottom.svg'),
            buildNavigationItem(2, 'assets/icons/Chat-bottom.svg',
                'assets/icons/Chat-bottom.svg'),
            buildNavigationItem(3, 'assets/icons/Bag-bottom.svg',
                'assets/icons/Bag-bottom.svg'),
            buildNavigationItem(4, 'assets/icons/Profile-bottom.svg',
                'assets/icons/Profile-bottom.svg'),
          ],
        ),
      ),
    );
  }

  Widget buildNavigationItem(int index, String image1, String image2) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _setectedIndex = index;
            });
          },
          child: SvgPicture.asset(
            index == _setectedIndex ? image1 : image2,
            color: Color(0xFFDC175D),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        index == _setectedIndex
            ? Container(
                width: 44,
                height: 5,
                decoration: BoxDecoration(
                    color: Color(0xFFDC175D),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    )),
              )
            : SizedBox(
                width: 44,
                height: 5,
              )
      ],
    );
  }
}
