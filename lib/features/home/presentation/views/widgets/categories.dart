import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_slash/core/theming/styles.dart';
import 'package:test_slash/features/home/presentation/views/widgets/custom_row_description.dart';

import '../../../../../constans.dart';
import 'custom_item_category.dart';

class Categories extends StatelessWidget {
  const Categories({required this.textDesc,
    super.key,
  });
final String textDesc;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         CustomRowDescription(text: textDesc,),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 105.sp,
          child: Padding(
            padding: const EdgeInsets.only(left: kPadding),
            child: ListView.builder(
              scrollDirection: axisDirectionToAxis(AxisDirection.left),
              itemCount: 5,
              itemBuilder: (context, index) {
                return const CustomItemCategory();
              },
            ),
          ),
        )
      ],
    );
  }
}

