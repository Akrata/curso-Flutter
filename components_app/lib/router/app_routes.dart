import 'package:components_app/screens/card_screen.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    // MenuOptions(
    //     route_dir: 'home',
    //     name: 'Home Screen',
    //     screen: HomeScreen(),
    //     icon: Icons.home),
    MenuOptions(
        route_dir: 'listview1',
        name: 'Listview 1',
        screen: Listview1Screen(),
        icon: Icons.library_books_outlined),
    MenuOptions(
        route_dir: 'card',
        name: 'card',
        screen: CardScreen(),
        icon: Icons.card_membership_outlined),
    MenuOptions(
        route_dir: 'alert',
        name: 'Alert',
        screen: AlertScreen(),
        icon: Icons.crisis_alert),
    MenuOptions(
        route_dir: 'circleAvatar',
        name: 'Circle Avatar',
        screen: CircleAvatarScreen(),
        icon: Icons.circle_outlined),
    MenuOptions(
        route_dir: 'animatedContainer',
        name: 'Animated Container',
        screen: AnimatedScreen(),
        icon: Icons.check_box_outline_blank_sharp),
    MenuOptions(
        route_dir: 'inputs',
        name: 'Inputs',
        screen: InputScreen(),
        icon: Icons.input_rounded),
    MenuOptions(
        route_dir: 'slider',
        name: 'Sliders',
        screen: SliderScreen(),
        icon: Icons.sd_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    final Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (var element in menuOptions) {
      appRoutes.addAll({element.route_dir: (context) => element.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => HomeScreen(),
  //   'listview1': (context) => Listview1Screen(),
  // };

  static OngenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => HomeScreen(),
    );
  }
}
