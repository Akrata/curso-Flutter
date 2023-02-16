import 'package:components_app/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:components_app/screens/screens.dart';

import 'themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(useMaterial3: true),
      title: 'Material App',
      // home: Scaffold(
      //   body: Listview1Screen(),
      // ),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: (settings) => AppRoutes.OngenerateRoute(settings),
      theme: AppTheme.lightTheme,
    );
  }
}
