import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_slash/features/home/domain/entities/product.dart';



class DetailsScreen extends StatefulWidget {
  DetailsScreen(
      {super.key,required this.backGroundColor, required this.product, });
final Color backGroundColor;
final  Product product;
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int indexImage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.backGroundColor,
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        actions: [
          IconButton(

            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: widget.backGroundColor,
              child: SvgPicture.asset(
                "assets/icons/Heart.svg",
                height: 20.sp,
              ),
            ),
          ),
          SizedBox(
            child: IconButton(
              highlightColor: Colors.green,
              onPressed: () {

              },
              icon:  CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.shopping_cart,size: 25.sp,)),
            ),
          )

        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child:Image.asset(widget.product.image,fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 2),

          Container(
            padding: const EdgeInsets.fromLTRB(Checkbox.width, 0, 0, 0),
            decoration:  BoxDecoration(
              color: Colors.white.withOpacity(.4),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20 * 3),
                topRight: Radius.circular(20 * 3),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   SizedBox(height: 30.sp),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        widget.product.name,
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                       SizedBox(width: 4.sp),
                      Text(
                        "${widget.product.price.toString()} EGP",
                        style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.green),
                      ),
                    ],
                  ),
                   SizedBox(height: 30.sp),

Center(
  child: SizedBox(
    width: 150.sp,
    child: ElevatedButton(onPressed: () {

    }, child: const Text("Check Out",style: TextStyle(color: Colors.white),),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),),

  ),
),
                  SizedBox(height: 30.sp),


                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

