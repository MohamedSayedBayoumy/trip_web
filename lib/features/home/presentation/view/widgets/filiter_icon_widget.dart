import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../../../../common/constants/assets.dart';
import '../../../../../common/constants/colors.dart';

class FiliterIconWidget extends StatelessWidget {
  const FiliterIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadIconButton.secondary(
      width: 48,
      height: 48,
      decoration: ShadDecoration(shape: BoxShape.circle),
      backgroundColor: AppColors.filiterBackgroundColor,
      icon: SvgPicture.asset(AppAssets.imagesSliders),
      onPressed: () => print('Secondary'),
    );
  }
}
