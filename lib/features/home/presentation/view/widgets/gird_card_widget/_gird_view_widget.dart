import 'package:flutter/material.dart';

import '_gird_card_widget.dart';

class GirdViewWidget extends StatelessWidget {
  const GirdViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = List.generate(
      20,
      (index) => 'عنصر ${index + 1}',
    );

    return ScrollConfiguration(
      behavior: NoScrollGlowBehavior(),
      child: GridView.builder(
        itemCount: items.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent:
              MediaQuery.sizeOf(context).width < 450
                  ? MediaQuery.sizeOf(context).width
                  : 244,
          mainAxisExtent: 280,
          crossAxisSpacing: 16,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          return GirdCardWidget();
        },
      ),
    );
  }
}

class NoScrollGlowBehavior extends ScrollBehavior {
  @override
  Widget buildScrollbar(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    return child;
  }

  @override
  Widget buildOverscrollIndicator(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    return child;
  }
}
