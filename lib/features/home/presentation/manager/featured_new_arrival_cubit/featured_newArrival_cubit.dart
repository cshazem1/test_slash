
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_slash/features/home/domain/use_cases/fetch_products_best_selling.dart';


import '../../../domain/use_cases/fetch_products_new_arrival.dart';
import 'featured_newArrival_state.dart';

class FeaturedNewArrivalCubit extends Cubit<FetchProductNewArrivalState> {
  final FetchProductsNewArrival fetchProductsNewArrival;

  FeaturedNewArrivalCubit(this.fetchProductsNewArrival) : super(ProductNewArrivalInitial());

  void fetchProducts() async {
    try {
      emit(ProductNewArrivalLoading());
      final products = await fetchProductsNewArrival();
      emit(ProductNewArrivalLoaded(products));
    } catch (e) {
      emit(ProductNewArrivalError(e.toString()));
    }
  }
}
