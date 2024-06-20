import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:test_slash/features/home/data/repos/home_repo.dart';
import '../models/product_models/best_selling.dart';
import '../models/product_models/new_arrival.dart';
import '../models/product_models/product_model.dart';
import '../models/product_models/recommended_for_you.dart';
class ProductRepository extends HomeRepo {
  @override
  Future<List<BestSelling>> fetchProductsBestSelling() async {
    String jsonString = await rootBundle.loadString('assets/json/dummyData.json');
    final Map<String, dynamic> jsonResponse = json.decode(jsonString);
    return  ProductModel.fromJson(jsonResponse).bestSelling!;
  }
  @override
  Future<List<NewArrival>> fetchProductsNewArrival() async {
    String jsonString = await rootBundle.loadString('assets/json/dummyData.json');
    final Map<String, dynamic> jsonResponse = json.decode(jsonString);
    return  ProductModel.fromJson(jsonResponse).newArrival!;
  }
  @override
  Future<List<RecommendedForYou>> fetchProducts() async {
    String jsonString = await rootBundle.loadString('assets/json/dummyData.json');
    final Map<String, dynamic> jsonResponse = json.decode(jsonString);
    return  ProductModel.fromJson(jsonResponse).recommendedForYou!;
  }
}