import 'package:flutter/material.dart';

import '../../../../../../common/constants/colors.dart';

class CardDividerWidget extends StatelessWidget {
  const CardDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 12.0),
        Container(
          width: MediaQuery.sizeOf(context).width,
          height: 1,
          color: AppColors.blackColor,
        ),
        SizedBox(height: 12.0),
      ],
    );
  }
}
