import 'package:flutter/material.dart';

import '../../../../../../common/constants/assets.dart';
import '../../../../../../common/constants/colors.dart';
import 'alert_icon_widget.dart';
import 'setting_icon_widget.dart';

class ActionMobileView extends StatelessWidget {
  const ActionMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SettingIconWidget(),

        SizedBox(width: 12),

        AlertIconWidget(),

        SizedBox(width: 12),

        VerticalDivider(
          endIndent: 11,
          indent: 11,
          width: 3,
          color: AppColors.secondryDividerColor,
        ),

        SizedBox(width: 12),

        CircleAvatar(
          radius: 15,
          backgroundImage: AssetImage(AppAssets.imagesUserImage),
        ),
      ],
    );
  }
}
