import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_slash/constans.dart';
import 'package:test_slash/core/theming/colors.dart';

import 'custom_item_show_product.dart';
import 'custom_row_description.dart';

class CustomShowProducts extends StatelessWidget {
  const CustomShowProducts({
    required this.textDesc,
    super.key,
  });
  final String textDesc;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomRowDescription(text: textDesc),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: kPadding),
          child: SizedBox(
            height: 170.sp,
            child: ListView.builder(
              scrollDirection: axisDirectionToAxis(AxisDirection.left),
              itemCount: 5,
              itemBuilder: (context, index) {
                return const CustomItemShowProduct();
              },
            ),
          ),
        )
      ],
    );
  }
}