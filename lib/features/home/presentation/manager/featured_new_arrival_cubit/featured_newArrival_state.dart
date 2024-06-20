import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_slash/features/home/data/models/product_models/new_arrival.dart';

import '../../../data/models/product_models/best_selling.dart';

abstract class FetchProductNewArrivalState {}

class ProductNewArrivalInitial extends FetchProductNewArrivalState {}

class ProductNewArrivalLoading extends FetchProductNewArrivalState {}

class ProductNewArrivalLoaded extends FetchProductNewArrivalState {
  final List<NewArrival> products;

  ProductNewArrivalLoaded(this.products);
}
class ProductNewArrivalError extends FetchProductNewArrivalState {
  final String message;

  ProductNewArrivalError(this.message);
}

