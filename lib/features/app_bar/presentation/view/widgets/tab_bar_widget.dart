import 'package:flutter/material.dart';

import '../../../../../common/constants/colors.dart';
import '../../../../../common/constants/fonts.dart';

class TabBarWidget extends StatefulWidget implements PreferredSizeWidget {
  TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();

  @override
  Size get preferredSize => Size.fromHeight(80);
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Builder(
        builder: (context) {
          final TabController controller = DefaultTabController.of(context);

          return TabBar(
            controller: controller,
            padding: EdgeInsets.symmetric(vertical: 0.0),
            labelStyle: AppFont.styleMeduim14,
            unselectedLabelStyle: AppFont.styleRegular14.copyWith(
              color: AppColors.secondryWhiteColor,
            ),
            indicatorPadding: EdgeInsets.only(bottom: -20.0),
            dividerColor: Colors.transparent,
            isScrollable: true,
            tabs: [
              Tab(text: "Items"),
              Tab(text: "Pricing"),
              Tab(text: "Info"),
              Tab(text: "Tasks"),
              Tab(text: "Analytics"),
            ],
          );
        },
      ),
    );
  }
}
