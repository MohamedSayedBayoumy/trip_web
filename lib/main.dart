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
        colorScheme: const ShadSlateColorScheme.dark(),
        textTheme: ShadTextTheme(family: "Inter"),
        breakpoints: ShadBreakpoints(
          tn: 0,
          sm: 400 ,
          md: 500,
          lg: 600,
          xl: 1280,
          xxl: 1536, // this mean the xxl while be stop in 1536 and start with xl , mean when width go to 1536 piexl while stop and xl while start 
        ),
      ),
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
