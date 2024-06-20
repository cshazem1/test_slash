

import '../../data/models/product_models/best_selling.dart';
import '../../data/models/product_models/new_arrival.dart';
import '../../data/models/product_models/recommended_for_you.dart';

abstract class HomeRepo {
  Future<List<BestSelling>> fetchProductsBestSelling();
  Future<List<NewArrival>> fetchProductsNewArrival();
  Future<List<RecommendedForYou>> fetchRecommendedForYou();
  }