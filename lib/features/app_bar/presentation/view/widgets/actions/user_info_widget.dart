import 'package:flutter/material.dart';

import '../../../../../../common/constants/assets.dart';
import '../../../../../../common/constants/fonts.dart';
import '../../../../../../common/utils/app_utlis.dart';

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({super.key, this.showArrow = true});

  final bool showArrow;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: WidgetStatePropertyAll(Colors.transparent),
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage(AppAssets.imagesUserImage),
          ),
          if (AppUtils.isWeb(context)) ...[
            SizedBox(width: 12),
            Expanded(
              child: Text(
                "Mohamed Sayed Bayoumi",
                style: AppFont.styleRegular14,
              ),
            ),
          ],
          if (showArrow == true) ...[
            SizedBox(width: 12),
            Icon(Icons.keyboard_arrow_down_outlined),
          ],
        ],
      ),
    );
  }
}
