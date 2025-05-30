import 'package:flutter/material.dart';

import 'gird_card_widget/_gird_view_widget.dart';
import 'tool_bar_widget.dart';

class HomeWebViewWidget extends StatelessWidget {
  const HomeWebViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ToolBarWidget(), Expanded(child: GirdViewWidget())],
    );
  }
}
