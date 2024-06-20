import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_slash/features/home/data/models/product_models/recommended_for_you.dart';

import '../../../data/models/product_models/best_selling.dart';

abstract class FetchRecommendedForYouState {}

class FetchRecommendedForYouInitial extends FetchRecommendedForYouState {}

class FetchRecommendedForYouLoading extends FetchRecommendedForYouState {}

class FetchRecommendedForYouLoaded extends FetchRecommendedForYouState {
  final List<RecommendedForYou> products;

  FetchRecommendedForYouLoaded(this.products);
}
class FetchRecommendedForYouError extends FetchRecommendedForYouState {
  final String message;

  FetchRecommendedForYouError(this.message);
}

