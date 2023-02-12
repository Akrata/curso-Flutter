import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  Listview1Screen({Key? key}) : super(key: key);

  final List options = ['HOla', 'Como', 'Va'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Tipo 1"),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(options[index]),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () {
              print(options[index]);
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }
}
