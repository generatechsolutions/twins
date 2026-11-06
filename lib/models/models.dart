import 'package:flutter/material.dart';

class Category {
  final int id;
  final String name;
  final IconData icon;
  const Category({required this.id, required this.name, required this.icon});
}

class Product {
  final int id;
  final String name;
  final double price;
  final double? oldPrice;
  final int categoryId;
  const Product({
    required this.id,
    required this.name,
    required this.price,
    this.oldPrice,
    required this.categoryId,
  });

  int? get discountPercent {
    if (oldPrice == null || oldPrice! <= price) return null;
    return (((oldPrice! - price) / oldPrice!) * 100).round();
  }
}