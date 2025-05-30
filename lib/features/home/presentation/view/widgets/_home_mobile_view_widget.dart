import 'package:flutter/material.dart';

import 'tool_bar_widget.dart';

class HomeMobileViewWidget extends StatelessWidget {
  const HomeMobileViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [ToolBarWidget()]);
  }
}