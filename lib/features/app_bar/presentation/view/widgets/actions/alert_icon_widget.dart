import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../../../../../common/constants/assets.dart';

class AlertIconWidget extends StatelessWidget {
  const AlertIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(AppAssets.imagesAlert);
  }
}
