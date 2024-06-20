import 'package:test_slash/features/home/data/models/product_models/new_arrival.dart';
import 'package:test_slash/features/home/data/models/product_models/recommended_for_you.dart';

import '../../data/repositories/product_repository.dart';

class FetchProductsNewArrival {
  final ProductRepository repository;

  FetchProductsNewArrival(this.repository);

  Future<List<NewArrival>> call() async {
    return await repository.fetchProductsNewArrival();
  }
}