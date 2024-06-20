import 'package:test_slash/features/home/data/models/product_models/product_model.dart';

import '../../data/models/product_models/best_selling.dart';
import '../../data/repositories/product_repository.dart';

class GetProducts {
  final ProductRepository repository;

  GetProducts(this.repository);

  Future<ProductModel> call() async {
    return await repository.fetchProductsBestSelling();
  }
}