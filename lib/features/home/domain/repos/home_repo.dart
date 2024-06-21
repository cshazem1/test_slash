

import '../../data/models/product_models/best_selling.dart';
import '../../data/models/product_models/new_arrival.dart';
import '../../data/models/product_models/product_model.dart';
import '../../data/models/product_models/recommended_for_you.dart';

abstract class HomeRepo {
  Future<ProductModel> fetchProducts();

  }