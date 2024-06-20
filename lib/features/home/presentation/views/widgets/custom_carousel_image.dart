import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constans.dart';

class CustomCarouselImage extends StatelessWidget {
  const CustomCarouselImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kPadding
      ),      child: SizedBox(
          height: 180.spMax,
          child: AnotherCarousel(
              dotSize: 6.0,
              dotSpacing: 15.0,
              dotHorizontalPadding: 10,
              boxFit: BoxFit.fill,
              noRadiusForIndicator: true,

              dotColor: Colors.grey,
              indicatorBgPadding: 10.0,


              dotBgColor: kPrimaryColor,
dotIncreasedColor: Colors.black,

              borderRadius: true, images: const [
            AssetImage("assets/images/black_friday.png"),
            AssetImage("assets/images/black_friday2.jpeg")
          ])),
    );
  }
}
