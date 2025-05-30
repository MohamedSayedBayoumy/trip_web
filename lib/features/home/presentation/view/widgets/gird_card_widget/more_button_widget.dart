import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../../../../../common/constants/colors.dart';

class MoreButtonWidget extends StatelessWidget {
  const MoreButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Align(
        alignment: AlignmentDirectional.topEnd,
        child: ShadIconButton.secondary(
          width: 32,
          height: 32,
          decoration: ShadDecoration(shape: BoxShape.circle),
          backgroundColor: AppColors.greyDarckColor,
          hoverBackgroundColor: AppColors.greyDarckColor,
          icon: Icon(Icons.more_horiz_outlined, color: Colors.white),
        ),
      ),
    );
  }
}
