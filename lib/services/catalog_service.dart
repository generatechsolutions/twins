import 'package:flutter/material.dart';
import '../models/models.dart';

class CatalogService {
  static const List<Category> _categories = [
    Category(id: 1, name: 'ROPA', icon: Icons.checkroom),
    Category(id: 2, name: 'ACCESORIOS', icon: Icons.watch),
    Category(id: 3, name: 'CALZADO', icon: Icons.directions_walk),
    Category(id: 4, name: 'BUFFET', icon: Icons.restaurant),
    Category(id: 5, name: 'PAPELERIA', icon: Icons.edit),
    Category(id: 6, name: 'MANUALIDADES', icon: Icons.brush),
    Category(id: 7, name: 'ARTESANIAS', icon: Icons.palette),
    Category(id: 8, name: 'SNACKS', icon: Icons.fastfood),
    Category(id: 9, name: 'FERRETERÍA', icon: Icons.hardware),
    Category(id: 10, name: 'HOGAR', icon: Icons.home),
    Category(id: 11, name: 'ACCESORIOS DE AUTOS', icon: Icons.directions_car),
    Category(id: 12, name: 'TECNOLOGIA', icon: Icons.devices),
    Category(id: 13, name: 'MASCOTAS', icon: Icons.pets),
    Category(id: 14, name: 'BELLEZA', icon: Icons.face),
    Category(id: 15, name: 'SALUD', icon: Icons.favorite),
    Category(id: 16, name: 'DEPORTES', icon: Icons.sports_soccer),
    Category(id: 17, name: 'JUGUETES', icon: Icons.toys),
    Category(id: 18, name: 'SORTEO', icon: Icons.card_giftcard),
  ];

  static const List<Product> _products = [
    Product(id: 1, name: 'REMOVEDOR DE PELO PARA MASCOTAS', price: 8.05, oldPrice: 16.10, categoryId: 13),
    Product(id: 2, name: 'RELOJ DE MESA DIGITAL MULTIFUNCIÓN', price: 6.90, oldPrice: 13.80, categoryId: 12),
    Product(id: 3, name: 'BLUSA CROP ASIMÉTRICA (DER) VERDE MILITAR', price: 5.99, categoryId: 1),
    Product(id: 4, name: 'PANTALÓN JOGGER DE GABARDINA PARA HOMBRE CON BOLSILLOS CARGO', price: 16.99, categoryId: 1),
    Product(id: 5, name: 'Candado BENSSON Professional Tools 60 mm', price: 5.50, categoryId: 9),
    Product(id: 6, name: 'CAMISA MANGA CORTA Y CUELLO CHINO', price: 14.99, categoryId: 1),
    Product(id: 7, name: 'TAPETE DE JUEGOS PARA PEQUEÑOS', price: 10.98, oldPrice: 14.37, categoryId: 17),
    Product(id: 8, name: 'BATIDOR RECARGABLE', price: 5.49, oldPrice: 8.79, categoryId: 10),
    Product(id: 9, name: 'CAJA 21 TIRAS/12U - NATURITAS POLLO 30GR', price: 43.89, categoryId: 8),
    Product(id: 10, name: 'CAMARA FUNCIONAL DE 180 GRADOS EN FORMA DE BOMBILLO', price: 12.65, oldPrice: 25.30, categoryId: 12),
  ];

  List<Category> categories() => _categories;

  List<Product> products({int? categoryId}) {
    if (categoryId == null) return _products;
    return _products.where((p) => p.categoryId == categoryId).toList();
  }
}