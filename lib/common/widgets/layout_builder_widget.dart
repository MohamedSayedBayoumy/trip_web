import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../features/app_bar/presentation/view/screens/nav_bar.dart';

class LayoutBuilderWidget extends StatelessWidget {
  final Widget mobileView, tabletView, webView;
  const LayoutBuilderWidget({
    super.key,
    required this.mobileView,
    required this.tabletView,
    required this.webView,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NavBar(),
          Expanded(
            child: ShadResponsiveBuilder(
              builder: (context, breakpoint) {
                return switch (breakpoint) {
                  ShadBreakpointTN() => mobileView,
                  ShadBreakpointSM() => mobileView,
                  ShadBreakpointMD() => mobileView,
                  ShadBreakpointLG() => tabletView,
                  ShadBreakpointXL() => webView,
                  ShadBreakpointXXL() => webView,
                };
              },
            ),
          ),
        ],
      ),
    );
  }
}
