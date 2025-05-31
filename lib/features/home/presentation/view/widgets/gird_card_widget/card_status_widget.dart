import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:trip_web/common/constants/assets.dart';

import '../../../../../../common/constants/fonts.dart';
import '../../../../domain/entites/trip_entite.dart';

class CardStatusWidget extends StatelessWidget {
  const CardStatusWidget({super.key, required this.trip});
  final TripModel trip;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ShadButton.outline(
          width: 155,
          height: 28,
          backgroundColor: trip.mainColor.withValues(alpha: .2),
          hoverBackgroundColor: Colors.transparent,
          decoration: ShadDecoration(
            border: ShadBorder.all(
              radius: BorderRadius.circular(20.0),
              width: 1.0,
              color: trip.mainColor,
            ),
          ),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(trip.status, style: AppFont.styleRegular14),
          ),
          onPressed: () {},
        ),

        SvgPicture.asset(AppAssets.imagesChevronDown),
      ],
    );
  }
}
