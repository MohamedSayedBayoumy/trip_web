import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/services/get_it_services.dart';
import '../../../../../common/widgets/layout_builder_widget.dart';
import '../../controller/home_cubit.dart';
import '../widgets/_home_mobile_view_widget.dart';
import '../widgets/_home_tablet_view_widget.dart';
import '../widgets/_home_web_view_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) => sl<HomeCubit>()..getTrips(),
      child: LayoutBuilderWidget(
        mobileView: HomeMobileViewWidget(),
        tabletView: HomeTabletViewWidget(),
        webView: HomeWebViewWidget(),
      ),
    );
  }
}
