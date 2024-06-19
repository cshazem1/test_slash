import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_slash/core/theming/colors.dart';
import 'package:test_slash/features/home/presentation/views/widgets/home_view_body.dart';

import '../../../../core/theming/styles.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: HomeViewBody(),
      ),
    );
  }
}

