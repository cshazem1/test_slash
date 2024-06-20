import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/product_models/best_selling.dart';

abstract class FetchProductsBestSellingState {}

class ProductBestSellingInitial extends FetchProductsBestSellingState {}

class ProductBestSellingLoading extends FetchProductsBestSellingState {}

class ProductBestSellingLoaded extends FetchProductsBestSellingState {
  final List<BestSelling> products;

  ProductBestSellingLoaded(this.products);
}
class ProductBestSellingError extends FetchProductsBestSellingState {
  final String message;

  ProductBestSellingError(this.message);
}

