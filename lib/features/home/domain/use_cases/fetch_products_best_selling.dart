import '../../data/models/product_models/best_selling.dart';
import '../../data/repositories/product_repository.dart';

class FetchProductsBestSelling {
  final ProductRepository repository;

  FetchProductsBestSelling(this.repository);

  Future<List<BestSelling>> call() async {
    return await repository.fetchProductsBestSelling();
  }
}