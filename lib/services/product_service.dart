import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/product.dart';

class ProductService {
  Future<List<Product>> fetchProducts() async {
    try {
      final String response =
          await rootBundle.loadString('assets/data/products.json');

      final List<dynamic> jsonData = jsonDecode(response);

      return jsonData
          .map((item) => Product.fromJson(item as Map<String, dynamic>))
          .toList();
    } catch (e) {
      throw Exception('Ürünler yüklenirken hata oluştu: $e');
    }
  }
}