import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../controller/home_cubit.dart';
import '_gird_card_widget.dart';

class GirdViewWidget extends StatelessWidget {
  const GirdViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: NoScrollGlowBehavior(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          final list = context.read<HomeCubit>().trips;
          return GridView.builder(
            itemCount: list.length,
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
              return GirdCardWidget(tripModel: list[index]);
            },
          );
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
