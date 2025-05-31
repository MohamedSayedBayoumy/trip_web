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

  static String formatDateRange(DateTime startDate, DateTime endDate) {
    int nights = endDate.difference(startDate).inDays;

    String formattedStart = DateFormat('MMM d').format(startDate);
    String formattedEnd = DateFormat('MMM d').format(endDate);
    String formattedYear = DateFormat('yyyy').format(endDate);

    String result =
        "$nights Nights ($formattedStart - $formattedEnd, $formattedYear)";

    return result;
  }
}
