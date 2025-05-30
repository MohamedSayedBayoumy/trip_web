import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import 'common/routes/route_buillder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadApp.router(
      themeMode: ThemeMode.dark,
      darkTheme: ShadThemeData(
        brightness: Brightness.dark,
        colorScheme: const ShadSlateColorScheme.dark(background: Colors.black),
        textTheme: ShadTextTheme(family: "Inter"),
        breakpoints: ShadBreakpoints(md: 0, lg: 700, xl: 1200),
      ),
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
