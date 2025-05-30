import 'package:flutter/material.dart';

import '../../../../../../common/constants/colors.dart';

class GrandientCardWidget extends StatelessWidget {
  const GrandientCardWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentDirectional.bottomCenter,
          end: AlignmentDirectional.topCenter,
          colors: [
            AppColors.greyDarckColor,
            AppColors.greyDarckColor,
            Color.fromRGBO(23, 23, 23, 0.6),
            Color.fromRGBO(23, 23, 23, 0.4),
          ],
          stops: [0.4, 0.5, 0.6, 0.7],
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.0)),
      ),

      child: child,
    );
  }
}
