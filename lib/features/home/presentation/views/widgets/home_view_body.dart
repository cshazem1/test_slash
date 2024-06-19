import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import 'custom_app_bar.dart';
import 'custom_search.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0,vertical: 28),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBar(),
            SizedBox(height: 15.spMax,),
            const CustomSearch()

          ],
        ),

      ),
    );
  }
}

