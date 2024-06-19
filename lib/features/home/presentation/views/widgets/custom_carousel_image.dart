import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCarouselImage extends StatelessWidget {
  const CustomCarouselImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 153.spMax,
        child: AnotherCarousel(borderRadius: true, images: const [
          AssetImage("assets/images/black_friday.png"),
          AssetImage("assets/images/black_friday2.jpeg")
        ]));
  }
}
