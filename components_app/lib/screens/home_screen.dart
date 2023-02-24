import 'package:components_app/router/app_routes.dart';
import 'package:components_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final menuOptions = AppRoutes.menuOptions;
  HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Componentes en Flutter"),
      ),
      body: ListView.separated(
        itemCount: menuOptions.length,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(menuOptions[index].name),
            leading: Icon(
              menuOptions[index].icon,
              color: AppTheme.primary,
            ),
            onTap: () {
              Navigator.pushNamed(context, menuOptions[index].route_dir);
            },
          );
        },
      ),
    );
  }
}
