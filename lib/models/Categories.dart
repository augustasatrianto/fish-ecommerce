import 'package:flutter/material.dart';

class Category {
  final int id;
  final String name;

  Category({
    required this.id,
    required this.name,
  });
}

// Our demo Categories

List<Category> demoCategories = [
  Category(
    id: 1,
    name: 'All',
  ),
  Category(
    id: 2,
    name: 'Arapaima',
  ),
  Category(
    id: 3,
    name: 'Arowana',
  ),
  Category(
    id: 4,
    name: 'Betta Fish',
  ),
];
