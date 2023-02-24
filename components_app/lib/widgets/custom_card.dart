import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.abc_outlined,
              color: AppTheme.primary,
            ),
            title: Text("soy un titulo"),
            subtitle: Text(
                "Sint eu aliquipSint eu aliquipSint eu aliquipSint eu aliquipSint eu aliquipSint eu aliquipSint eu aliquip anim incididunt velit deserunt in amet id deserunt cupidatat qui elit."),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text("Cancel"),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("ok"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
