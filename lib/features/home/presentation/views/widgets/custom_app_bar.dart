import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_slash/constans.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kPadding
      ),
      child: SizedBox(
        height: 42.spMax,
        width: MediaQuery.sizeOf(context).width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Slash",
              style: TextStyles.font20Black700Weight.copyWith(fontSize: 20.sp),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 Icon(Icons.location_on_rounded,size: 20.sp,),
                 SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      "Nasr City",
                      style: TextStyles.font14Black400Weight.copyWith(fontSize: 14.sp),
                    ),
                    Text(
                      "Cairo",
                      style: TextStyles.font14Black700Weight.copyWith(fontSize: 14.sp),
                    ),
                  ],
                ),
                 SizedBox(
                  width: 10,
                ),
                 Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 30.sp,
                    ),
                  ],
                )
              ],
            ),
            Stack(children: [
               Icon(
                CupertinoIcons.bell,
                size: 30.sp,
              ),
              Positioned(
                right: 2,
                top: 2,
                child: Container(
                  height: 12.sp,
                  width: 12.sp,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(500))),
                  child: Container(
                    height: 10.sp,
                    width: 10.sp,
                    decoration: const BoxDecoration(
                        color: ColorManager.red,
                        borderRadius: BorderRadius.all(Radius.circular(500))),
                  ),
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}
