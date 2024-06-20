import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_slash/features/home/domain/use_cases/get_products.dart';

import '../../../data/models/product_models/best_selling.dart';
import '../../../data/models/product_models/new_arrival.dart';
import '../../../data/models/product_models/recommended_for_you.dart';
import 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final GetProducts getProducts;
  ProductsCubit(this.getProducts) : super(ProductsInitial());
  List<BestSelling> bestSelling = [];
  List<NewArrival> newArrival = [];
  List<RecommendedForYou> recommendedForYou = [];
  void fetchProducts() async {
    try {
      emit(ProductsLoading());
      final products = await getProducts();
      print("wow");
      bestSelling = products.bestSelling!;
      newArrival = products.newArrival!;
      recommendedForYou = products.recommendedForYou!;
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
