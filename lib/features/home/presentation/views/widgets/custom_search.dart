import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_slash/core/theming/styles.dart';

import '../../../../../constans.dart';
import '../../../../../core/theming/colors.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kPadding
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 272.sp,
            height: 45.sp,
            decoration: BoxDecoration(
              color: ColorManager.gray,
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextField(
              onSubmitted: (value) {},
              style: const TextStyle(fontSize: 20),
              decoration: InputDecoration(
                enabledBorder: customOutlineInputBorder(),
                focusedBorder: customOutlineInputBorder(),
                prefixIcon: Opacity(
                  opacity: .7,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:    SvgPicture.asset(
                      "assets/svg/icons/search-normal.svg",width: 20.sp,height: 20.sp,)

                  ,
                  ),
                ),
                hintText: "Search here",
                hintStyle:
                    TextStyles.font14Black400Weight.copyWith(fontSize: 14.sp),
              ),
            ),
          ),
          Container(
            width: 47.sp,
            height: 45.sp,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: ColorManager.gray),
            child: Center(
              child: SvgPicture.asset(
                "assets/svg/icons/list_icon.svg",
                height: 18.sp,
                  width: 18.sp,

            ),
          ),)
        ],
      ),
    );
  }

  OutlineInputBorder customOutlineInputBorder() {
    return const OutlineInputBorder(
        borderSide: BorderSide(
          width: 2,
          color: ColorManager.gray,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ));
  }
}
