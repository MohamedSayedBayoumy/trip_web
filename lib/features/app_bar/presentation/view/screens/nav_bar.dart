import 'package:flutter/material.dart';

import '../../../../../common/constants/colors.dart';
import '../../../../../common/utils/app_utlis.dart';
import '../../../../../common/widgets/custom_padding.dart';
import '../widgets/actions/_actions_widget.dart';
import '../widgets/leading_widget.dart';
import '../widgets/tab_bar_widget.dart';

class NavBar extends StatelessWidget {
  NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      padding: EdgeInsets.symmetric(vertical: 18),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.blackColor)),
      ),
      child: CustomPadding(
        child: Row(
          children: [
            if (AppUtils.isMobile(context)) ...[
              Expanded(child: LeadingWidget()),
            ] else ...[
              LeadingWidget(),
            ],

            if (!AppUtils.isMobile(context)) ...[TabBarWidget()],

            Expanded(child: ActionsWidget()),
          ],
        ),
      ),
    );
  }
}
