import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: MediaQuery.sizeOf(context).width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Slash",
            style: TextStyles.font20Black700Weight,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.location_on_rounded),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    "Nasr City",
                    style: TextStyles.font14Black400Weight,
                  ),
                  Text(
                    "Cairo",
                    style: TextStyles.font14Black700Weight,
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 30,
                  ),
                ],
              )
            ],
          ),
          Stack(children: [
            const Icon(
              CupertinoIcons.bell,
              size: 30,
            ),
            Positioned(
              right: 2,
              top: 2,
              child: Container(
                height: 12,
                width: 12,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(500))),
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: const BoxDecoration(
                      color: ColorManager.red,
                      borderRadius: BorderRadius.all(Radius.circular(500))),
                ),
              ),
            )
          ])
        ],
      ),
    );
  }
}
