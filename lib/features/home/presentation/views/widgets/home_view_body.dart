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
import '../../../../../core/theming/styles.dart';
import '../../../data/models/product_models/best_selling.dart';
import '../../../data/models/product_models/new_arrival.dart';
import '../../../data/models/product_models/recommended_for_you.dart';
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
    final List<BestSelling> bestSelling=BlocProvider.of<ProductsCubit>(context).bestSelling;
    final List<NewArrival> newArrival=BlocProvider.of<ProductsCubit>(context).newArrival;
    final List<RecommendedForYou> recommendedForYou=BlocProvider.of<ProductsCubit>(context).recommendedForYou;
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
              list: bestSelling,
              textDesc: "Best Selling",
            ),
            SizedBox(
              height: 20.spMax,
            ),
            CustomShowProducts(
              list:newArrival,
              textDesc: "New Arrival",
            ),
            SizedBox(
              height: 20.spMax,
            ),
            CustomShowProducts(
              list: recommendedForYou,
              textDesc: "Recommended for you",
            ),
          ],
        ),
      ),
    );
  }
}
