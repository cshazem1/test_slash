
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_slash/features/home/domain/use_cases/fetch_products_best_selling.dart';


import '../../../data/models/product_models/new_arrival.dart';
import '../../../domain/use_cases/fetch_product_recommended_for_you.dart';
import 'featured_recommended_for_you_state.dart';

class FetchRecommendedForYouCubit extends Cubit<FetchRecommendedForYouState> {
  final FetchProductRecommendedForYou fetchProductRecommendedForYou ;

  FetchRecommendedForYouCubit(this.fetchProductRecommendedForYou) : super(FetchRecommendedForYouInitial());

  void fetchProducts() async {
    try {
      emit(FetchRecommendedForYouLoading());
      final products = await fetchProductRecommendedForYou();
      emit(FetchRecommendedForYouLoaded(products));
    } catch (e) {
      emit(FetchRecommendedForYouError(e.toString()));
    }
  }
}
