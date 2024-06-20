import 'package:test_slash/features/home/data/models/product_models/recommended_for_you.dart';

import '../../data/repositories/product_repository.dart';

class FetchRecommendedForYou{
  final ProductRepository repository;

  FetchRecommendedForYou(this.repository);

  Future<List<RecommendedForYou>> call() async {
    return await repository.fetchRecommendedForYou();
  }
}
