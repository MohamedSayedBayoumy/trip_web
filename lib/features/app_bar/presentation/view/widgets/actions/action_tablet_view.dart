import 'package:flutter/material.dart';

import '../../../../../../common/constants/colors.dart';
import 'alert_icon_widget.dart';
import 'user_info_widget.dart';

class ActionTabletView extends StatelessWidget {
  const ActionTabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (MediaQuery.sizeOf(context).width > 800) ...[
          VerticalDivider(
            endIndent: 11,
            indent: 11,
            width: 3,
            color: AppColors.secondryDividerColor,
          ),
          SizedBox(width: 12),

          AlertIconWidget(),

          SizedBox(width: 12),
        ],

        VerticalDivider(
          endIndent: 11,
          indent: 11,
          width: 3,
          color: AppColors.secondryDividerColor,
        ),

        SizedBox(width: 12),

        UserInfoWidget(
          showArrow: MediaQuery.sizeOf(context).width < 1000 ? false : true,
        ),
      ],
    );
  }
}
