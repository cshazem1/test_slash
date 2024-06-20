import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constans.dart';
import '../../../../../core/theming/styles.dart';

class CustomItemCategory extends StatelessWidget {
  const CustomItemCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 6.0),
          child: Column(
            children: [
              Container(
                width: 72.sp,
                height: 72.sp,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(500),
                    color: Colors.black),
                child: Center(
                    child: SvgPicture.asset(
                  "assets/svg/icons/shirt.svg",
                  height: 34.sp,
                  width: 34.sp,
                )),
              ),
              const SizedBox(
                height: 2,
              ),
              SizedBox(
                child: Text(
                  "Fashion",
                  style:
                      TextStyles.font14Black400Weight.copyWith(fontSize: 14.sp),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
