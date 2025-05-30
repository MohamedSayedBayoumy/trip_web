import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../../../../common/constants/assets.dart';
import '../../../../../common/constants/sizes.dart';
import '../../../../../common/utils/app_utlis.dart';

class LeadingWidget extends StatelessWidget {
  const LeadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:
          ((MediaQuery.sizeOf(context).width) * .5) -
          (AppSizes.heightPadding * 2), // Screen padding left and right
      child: Row(
        children: [
          if (AppUtils.isMobile(context) == true) ...[
            FadeIn(
              child: SvgPicture.asset(
                AppAssets.imagesMenu,
                semanticsLabel: 'Menu',
              ),
            ),
            SizedBox(width: 10.0),
          ],

          InkWell(
            overlayColor: WidgetStatePropertyAll(Colors.transparent),
            onTap: () {},
            child: SvgPicture.asset(
              AppAssets.imagesLogo,
              semanticsLabel: 'Logo',
            ),
          ),
        ],
      ),
    );
  }
}
