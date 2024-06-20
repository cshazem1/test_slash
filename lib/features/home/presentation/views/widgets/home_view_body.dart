import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_slash/constans.dart';
import 'package:test_slash/features/home/data/repositories/product_repository.dart';
import 'package:test_slash/features/home/domain/use_cases/get_products.dart';
import 'package:test_slash/features/home/presentation/manager/products_cubit/products_cubit.dart';
import 'package:test_slash/features/home/presentation/manager/products_cubit/products_state.dart';
import 'package:test_slash/features/home/presentation/views/widgets/categories.dart';
import 'package:test_slash/features/home/presentation/views/widgets/custom_row_description.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import 'custom_app_bar.dart';
import 'custom_carousel_image.dart';
import 'custom_search.dart';
import 'custom_show_products.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProductsCubit(GetProducts(ProductRepository()))..fetchProducts(),
      child: BlocBuilder<ProductsCubit, ProductsState>(
        builder: (context, state) {
          if (state is ProductsLoaded) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 28),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const CustomAppBar(),
                    SizedBox(
                      height: 20.spMax,
                    ),
                    const CustomSearch(),
                    SizedBox(
                      height: 20.spMax,
                    ),
                    const CustomCarouselImage(),
                    SizedBox(
                      height: 20.spMax,
                    ),
                    const Categories(
                      textDesc: "Categories",
                    ),
                    SizedBox(
                      height: 20.spMax,
                    ),
                    CustomShowProducts(
                      list: state.bestSelling,
                      textDesc: "Best Selling",
                    ),
                    SizedBox(
                      height: 20.spMax,
                    ),
                    CustomShowProducts(
                      list: state.newArrival,
                      textDesc: "New Arrival",
                    ),
                    SizedBox(
                      height: 20.spMax,
                    ),
                    CustomShowProducts(
                      list: state.recommendedForYou,
                      textDesc: "Recommended for you",
                    ),
                  ],
                ),
              ),
            );
          } else if (state is ProductsError) {
            Text(
              state.message,
              style: TextStyles.font22Black600Weight,
            );
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
