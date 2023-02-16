import 'package:flutter/material.dart';

class MenuOptions {
  final String route_dir;
  final String name;
  final Widget screen;
  final IconData icon;

  MenuOptions({
    required this.route_dir,
    required this.name,
    required this.screen,
    required this.icon,
  });
}
