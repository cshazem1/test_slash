import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_slash/core/theming/colors.dart';
import 'package:test_slash/features/home/presentation/views/widgets/home_view_body.dart';

import '../../../../core/theming/styles.dart';

class HomeViewWeb extends StatelessWidget {
  const HomeViewWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return  const ScreenUtilInit(
      designSize: Size(900, 1367),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 42.0),
            child: HomeViewBody(),
          ),
        ),
      ),
    );
  }
}

