import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_slash/features/home/data/models/categries_models/categry_model.dart';
import 'package:test_slash/features/home/presentation/views/widgets/custom_row_description.dart';

import '../../../../../constans.dart';
import 'custom_item_category.dart';

class Categories extends StatelessWidget {
  const Categories({
    required this.textDesc,
    super.key,
  });
  final String textDesc;

  @override
  Widget build(BuildContext context) {
    List<CategryModel> categry = [
      CategryModel(name: "Fashion", image: "assets/svg/icons/shirt.svg"),
      CategryModel(name: "Games", image: "assets/svg/icons/dice.svg"),
      CategryModel(name: "Accessories", image: "assets/svg/icons/glasses.svg"),
      CategryModel(name: "Books", image: "assets/svg/icons/book.svg"),
      CategryModel(name: "Artifacts", image: "assets/svg/icons/artifacts.svg")

    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomRowDescription(
          text: textDesc,
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 105.sp,
          child: Padding(
            padding: const EdgeInsets.only(left: kPadding),
            child: ListView.builder(
              scrollDirection: axisDirectionToAxis(AxisDirection.left),
              itemCount: categry.length,
              itemBuilder: (context, index) {
                return CustomItemCategory(
                  categry: categry[index],
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
