import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_slash/features/home/data/models/product_models/new_arrival.dart';
import 'package:test_slash/features/home/data/models/product_models/recommended_for_you.dart';

import '../../../data/models/product_models/best_selling.dart';

abstract class ProductsState {}

class ProductsInitial extends ProductsState {}

class ProductsLoading extends ProductsState {}

class ProductsLoaded extends ProductsState {
  final List<BestSelling> bestSelling;
  final List<NewArrival> newArrival;
  final List<RecommendedForYou> recommendedForYou;

  ProductsLoaded({required this.recommendedForYou,required this.newArrival,required this.bestSelling});
}
class ProductsError extends ProductsState {
  final String message;

  ProductsError(this.message);
}

