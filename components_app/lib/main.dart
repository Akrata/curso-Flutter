import 'package:flutter/material.dart';
import 'package:components_app/screens/screens.dart';

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
      initialRoute: 'home',
      routes: {
        'home': (context) => HomeScreen(),
        'listview1': (context) => Listview1Screen(),
      },
    );
  }
}
