import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_slash/constans.dart';
import 'package:test_slash/core/theming/colors.dart';
import 'package:test_slash/features/details_view/details_screen.dart';

import 'custom_item_show_product.dart';
import 'custom_row_description.dart';

class CustomShowProducts extends StatelessWidget {
  const CustomShowProducts({
    required this.textDesc,
    required this.list,
    super.key,
  });
  final String textDesc;
  final dynamic list;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomRowDescription(text: textDesc),
        SizedBox(
          height: 15.sp,
        ),
        Padding(
          padding: const EdgeInsets.only(left: kPadding),
          child: SizedBox(
            height: 195.sp,
            child: ListView.builder(
              scrollDirection: axisDirectionToAxis(AxisDirection.left),
              itemCount: list.length,
              itemBuilder: (context, index) {
                return CustomItemShowProduct(
                  product: list[index],
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
