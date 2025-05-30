import 'package:flutter/material.dart';

import '../../../../../../common/constants/colors.dart';
import 'alert_icon_widget.dart';
import 'setting_icon_widget.dart';
import 'user_info_widget.dart';

class ActionsWebViewWidget extends StatelessWidget {
  const ActionsWebViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        VerticalDivider(
          endIndent: 11,
          indent: 11,
          width: 3,
          color: AppColors.dividerColor,
        ),
        SizedBox(width: 24),

        SettingIconWidget(),
        SizedBox(width: 24),

        AlertIconWidget(),
        SizedBox(width: 24),

        VerticalDivider(
          endIndent: 11,
          indent: 11,
          width: 3,
          color: AppColors.secondryDividerColor,
        ),
        SizedBox(width: 24),
        Expanded(child: UserInfoWidget()),
      ],
    );
  }
}
