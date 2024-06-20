import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_slash/core/theming/styles.dart';

import '../../../../../constans.dart';
import '../../../../../core/theming/colors.dart';

class CustomItemShowProduct extends StatelessWidget {
  const CustomItemShowProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: 10.sp),
      child: SizedBox(
        height: 170.sp,
        width: 124.sp,
        child: Column(
          children: [
            SizedBox(
              height: 116.sp,
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/best_seller_1.png"),
                            fit: BoxFit.fill)),
                  ),
                  Positioned(
                    top: 6.sp,
                    left: 92.sp,
                    child: Container(
                      height: 26.sp,
                      width: 26.sp,
                      decoration: BoxDecoration(
                          color: ColorManager.gray,
                          borderRadius: BorderRadius.circular(500)),
                      child: Center(
                          child: SvgPicture.asset(
                        "assets/svg/icons/heart.svg",
                        width: 13.27.sp,
                        height: 11.97.sp,
                      )),
                    ),
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Stitch Keychain",
                  style: TextStyles.font16Black400Weight,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "EGP 55",
                      style: TextStyles.font16Black700Weight,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 22.sp,
                          width: 22.sp,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(500),
                            image: const DecorationImage(
                                image: AssetImage(
                                    "assets/images/black_friday.png"),
                                fit: BoxFit.fill),
                          ),
                        ),
                        SizedBox(
                          width: 5.sp,
                        ),
                        Container(
                          height: 22.sp,
                          width: 22.sp,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(500),
                              color: Colors.black),
                          child: SizedBox(
                            width: (8.46).sp,
                            height: (8.46).sp,
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
