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
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: ShadButton.outline(
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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(trip.status, style: AppFont.styleRegular25),
              if (!trip.status.toString().toLowerCase().contains("ready")) ...[
                SizedBox(width: 20.0),

                Transform.rotate(
                  angle: -1.57079633,
                  child: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.white,
                    size: 20.0,
                  ),
                ),
              ],
            ],
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
