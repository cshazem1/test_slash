
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_slash/features/home/domain/use_cases/fetch_products_best_selling.dart';


import 'featured_bestSelling_state.dart';

class FetchProductsBestSellingCubit extends Cubit<FetchProductsBestSellingState> {
  final FetchProductsBestSelling fetchProductsBestSelling;

  FetchProductsBestSellingCubit(this.fetchProductsBestSelling) : super(ProductBestSellingInitial());

  void fetchProducts() async {
    try {
      emit(ProductBestSellingLoading());
      final products = await fetchProductsBestSelling();
      emit(ProductBestSellingLoaded(products));
    } catch (e) {
      emit(ProductBestSellingError(e.toString()));
    }
  }
}