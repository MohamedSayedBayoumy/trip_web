import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_padding.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return CustomPadding(child: AppBar());
  }
}
