import 'dart:convert';
import 'package:flutter/services.dart';
import '../../domain/repos/home_repo.dart';
import '../models/product_models/best_selling.dart';
import '../models/product_models/new_arrival.dart';
import '../models/product_models/product_model.dart';
import '../models/product_models/recommended_for_you.dart';
class ProductRepository extends HomeRepo {
  @override
  Future<ProductModel> fetchProductsBestSelling() async {
    String jsonString = await rootBundle.loadString(
        'assets/json/dummyData.json');
    final Map<String, dynamic> jsonResponse = json.decode(jsonString);
    return ProductModel.fromJson(jsonResponse);
  }
}