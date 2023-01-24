import 'package:flutter/material.dart';

class Fish {
  final int id;
  final String name;
  final String alias;
  final String image;
  final int price;
  final int? discountPrice;

  Fish({
    required this.id,
    required this.name,
    required this.alias,
    required this.image,
    required this.price,
    required this.discountPrice,
  });
}

// Our demo Fish

List<Fish> demoFish = [
  Fish(
    id: 1,
    name: 'Nemo',
    alias: '',
    image: 'assets/images/fish-1.png',
    price: 169,
    discountPrice: null,
  ),
  Fish(
    id: 2,
    name: 'Gold Fish',
    alias: '',
    image: 'assets/images/fish-2.png',
    price: 169,
    discountPrice: null,
  ),
  Fish(
    id: 3,
    name: 'Paradise',
    alias: '',
    image: 'assets/images/fish-3.png',
    price: 169,
    discountPrice: null,
  ),
  Fish(
    id: 4,
    name: 'Lincah Sarawak',
    alias: '',
    image: 'assets/images/fish-discount-1.png',
    price: 169,
    discountPrice: 125,
  ),
  Fish(
    id: 5,
    name: 'Coccina',
    alias: '',
    image: 'assets/images/fish-discount-2.png',
    price: 169,
    discountPrice: 95,
  ),
  Fish(
    id: 6,
    name: 'HalfMoon',
    alias: 'Solid Male',
    image: 'assets/images/fish-cart-1.png',
    price: 169,
    discountPrice: 95,
  ),
  Fish(
    id: 7,
    name: 'Crown Tail',
    alias: 'Jantan Beta',
    image: 'assets/images/fish-cart-2.png',
    price: 202,
    discountPrice: 95,
  ),
  Fish(
    id: 8,
    name: 'Veil Tail',
    alias: 'Solid Male',
    image: 'assets/images/fish-cart-3.png',
    price: 120,
    discountPrice: 95,
  ),
];
