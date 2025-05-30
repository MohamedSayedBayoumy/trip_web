import 'package:go_router/go_router.dart';

import '../../features/home/presentation/view/screens/home_screen.dart';
import '../utils/app_utlis.dart';
import 'routes_paths.dart';

final GoRouter router = GoRouter(
  navigatorKey: AppUtils.navigatorKey,
  initialLocation: AppRoutePaths.home,
  routes: [
    GoRoute(
      path: AppRoutePaths.home,
      builder: (context, state) => HomeScreen(),
    ),
  ]
);