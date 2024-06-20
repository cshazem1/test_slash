import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/product_models/best_selling.dart';
import '../models/product_models/product_model.dart';
class ProductRepository {
  Future<List<BestSelling>> fetchProducts() async {
    String jsonString = await rootBundle.loadString('assets/json/dummyData.json');
    final Map<String, dynamic> jsonResponse = json.decode(jsonString);
    return  ProductModel.fromJson(jsonResponse).bestSelling!;
  }
}