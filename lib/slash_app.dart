import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_slash/core/routing/app_routers.dart';
import 'package:test_slash/features/home/presentation/manager/products_cubit/products_state.dart';
import 'package:test_slash/features/home/presentation/views/home_view_mobile.dart';

import 'constans.dart';
import 'core/theming/styles.dart';
import 'features/home/data/repositories/product_repository.dart';
import 'features/home/domain/use_cases/get_products.dart';
import 'features/home/presentation/manager/products_cubit/products_cubit.dart';
import 'features/home/presentation/views/home_view_web.dart';

class SlashApp extends StatelessWidget {
  const SlashApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouters.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kPrimaryColor),
    );
  }
}

class ResponsiveHomeScreen extends StatelessWidget {
  const ResponsiveHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      ProductsCubit(GetProducts(ProductRepository()))
        ..fetchProducts(),
      child: BlocBuilder<ProductsCubit, ProductsState>(
        builder: (context, state) {
      if (state is ProductsLoaded) {
        return LayoutBuilder(
          builder: (context, constraints) {
            print(constraints.maxWidth);

            if (constraints.maxWidth < 600) {
              return const HomeViewMobile();
            } else {
              return const HomeViewWeb();
            }
          },
        );

      }
      else if (state is ProductsError) {
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
