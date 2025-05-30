import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'action_mobile_view.dart';
import 'action_tablet_view.dart';
import 'action_web_view_widget.dart';

class ActionsWidget extends StatelessWidget {
  const ActionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadResponsiveBuilder(
      builder: (context, breakpoint) {
        return switch (breakpoint) {
          ShadBreakpointTN() => ActionMobileView(),
          ShadBreakpointSM() => ActionMobileView(),
          ShadBreakpointMD() => ActionMobileView(),
          ShadBreakpointLG() => ActionTabletView(),
          ShadBreakpointXL() => ActionsWebViewWidget(),
          ShadBreakpointXXL() => ActionsWebViewWidget(),
        };
      },
    );
  }
}
