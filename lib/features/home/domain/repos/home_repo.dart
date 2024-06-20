import '../models/product_models/best_selling.dart';
import '../models/product_models/new_arrival.dart';
import '../models/product_models/recommended_for_you.dart';

abstract class HomeRepo {
  Future<List<BestSelling>> fetchProductsBestSelling();
  Future<List<NewArrival>> fetchProductsNewArrival();
  Future<List<RecommendedForYou>> fetchProducts();
  }