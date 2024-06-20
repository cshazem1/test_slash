import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_slash/features/home/domain/use_cases/get_products.dart';

import 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final GetProducts getProducts;
  ProductsCubit(this.getProducts)
      : super(ProductsInitial());

  void fetchProducts() async {
    try {
      emit(ProductsLoading());
      final products = await getProducts();
      print("wow");
      emit(ProductsLoaded(
          bestSelling: products.bestSelling!,
          newArrival: products.newArrival!,
          recommendedForYou: products.recommendedForYou!));
    } catch (e) {
      emit(ProductsError(e.toString()));
      print("wow");

    }
  }
}
