import 'package:flutter/material.dart';

import '../constants/sizes.dart';

class CustomPadding extends StatelessWidget {
  final Widget child;
  const CustomPadding({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;
        double horizontalPadding = width * 0.02;

        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding.clamp(
              AppSizes.lowPadding,
              AppSizes.heightPadding,
            ),
          ),
          child: child,
        );
      },
    );
  }
}
