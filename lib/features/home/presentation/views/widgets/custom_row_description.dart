import 'package:flutter/material.dart';

import '../../../../../constans.dart';
import '../../../../../core/theming/styles.dart';

class CustomRowDescription extends StatelessWidget {
  const CustomRowDescription({required this.text,
    super.key,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyles.font22Black600Weight,
          ),
          Row(
            children: [
              Text(
                "See all",
                style: TextStyles.font14Black500Weight,
              ),
              const SizedBox(
                width: 15,
              ),
              const Icon(Icons.arrow_forward_ios)
            ],
          ),
        ],
      ),
    );
  }
}
