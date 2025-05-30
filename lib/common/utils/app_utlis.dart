import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

abstract class AppUtils {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static bool isMobile(BuildContext context) =>
      context.breakpoint < ShadTheme.of(context).breakpoints.lg;

  static bool isTablet(BuildContext context) {
    return context.breakpoint < ShadTheme.of(context).breakpoints.xl;
  }

  static bool isWeb(BuildContext context) {
    return context.breakpoint > ShadTheme.of(context).breakpoints.lg;
  }

  static double getCurrentPadding(BuildContext context) =>
      isMobile(context) ? 20.0 : 80;
}
