import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_slash/core/theming/styles.dart';
import 'package:test_slash/features/home/data/models/product_models/product_model.dart';

import '../../../../../constans.dart';
import '../../../../../core/theming/colors.dart';
import '../../../domain/entities/product.dart';

class CustomItemShowProduct extends StatelessWidget {
  const CustomItemShowProduct({
    required this.product,
    super.key,
  });
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 25.sp),
      child: SizedBox(
        width: 135.sp,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 116.sp,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        image: DecorationImage(
                            image: AssetImage(product.image),
                            fit: BoxFit.fill)),
                  ),
                  Positioned(
                    top: 6.sp,
                    left: 108.sp,
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
            SizedBox(height: 10.spMax,),
            Text(
              product.name,
              style:
                  TextStyles.font16Black400Weight.copyWith(fontSize: 16.sp),
            ),
            SizedBox(
              height: 5.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "EGP ${product.price}",
                  style: TextStyles.font16Black700Weight
                      .copyWith(fontSize: 16.sp),
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

                        child:  Icon(
                          Icons.add,
                          color: Colors.white,
                          size: (15).sp,

                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
