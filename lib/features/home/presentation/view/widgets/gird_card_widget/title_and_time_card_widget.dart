import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../../../../../common/constants/assets.dart';
import '../../../../../../common/constants/fonts.dart';

class TitleAndTimeCardWIidget extends StatelessWidget {
  const TitleAndTimeCardWIidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Item title",
          style: AppFont.styleRegular18.copyWith(color: Colors.white),
        ),
        SizedBox(height: 10.0),
        Row(
          children: [
            SvgPicture.asset(AppAssets.imagesCalendar, width: 16, height: 16),
            SizedBox(width: 6.0),
            Expanded(
              child: FittedBox(
                alignment: AlignmentDirectional.centerStart,
                fit: BoxFit.scaleDown,
                child: Text(
                  "Jan 16 - Jan 20, 2024",
                  maxLines: 1,
                  style: AppFont.styleRegular12,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
