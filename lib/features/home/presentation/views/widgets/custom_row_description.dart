import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constans.dart';
import '../../../../../core/theming/styles.dart';

class CustomRowDescription extends StatelessWidget {
  const CustomRowDescription({
    required this.text,
    super.key,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: kPadding.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyles.font22Black600Weight.copyWith(fontSize: 22.sp),
          ),
          Row(
            children: [
              Text(
                "See all",
                style: TextStyles.font14Black500Weight,
              ),
               SizedBox(
                width: 15.sp,
              ),
               Icon(Icons.arrow_forward_ios,size: 20.sp,)
            ],
          ),
        ],
      ),
    );
  }
}
