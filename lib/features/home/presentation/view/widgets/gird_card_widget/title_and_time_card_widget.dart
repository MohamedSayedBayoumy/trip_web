import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../../../../../common/constants/assets.dart';
import '../../../../../../common/constants/fonts.dart';

class TitleAndTimeCardWIidget extends StatelessWidget {
  const TitleAndTimeCardWIidget({
    super.key,
    required this.title,
    required this.time,
  });

  final String title, time;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: SelectableText(
            title,
            style: AppFont.styleRegular18.copyWith(color: Colors.white),
          ),
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
                child: SelectableText(time, maxLines: 1, style: AppFont.styleRegular12),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
