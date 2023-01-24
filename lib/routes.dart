import 'package:flutter/widgets.dart';

import 'screens/cart/cart_screen.dart';
import 'screens/detail/detail_screen.dart';
import 'screens/home/home_screens.dart';
import 'screens/search/search_screens.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  SearchScreen.routeName: (context) => SearchScreen(),
  DetailScreen.routeName: (context) => DetailScreen(),
  CartScreen.routeName: (context) => CartScreen(),
};
