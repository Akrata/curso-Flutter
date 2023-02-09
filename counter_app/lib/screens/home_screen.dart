import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;
  void incrementar() {
    contador++;
    setState(() {});
  }

  void decrementar() {
    contador--;
    setState(() {});
  }

  void resetear() {
    contador = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
        centerTitle: true,
      ),
      body: Center(
        child: Center(
          child: Text("Contador: $contador"),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ButtonsRow(
        incrementarFN: incrementar,
        decrementarFN: decrementar,
        resetearFN: resetear,
      ),
    );
  }
}

class ButtonsRow extends StatelessWidget {
  final Function incrementarFN;
  final Function decrementarFN;
  final Function resetearFN;

  const ButtonsRow({
    super.key,
    required this.incrementarFN,
    required this.decrementarFN,
    required this.resetearFN,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              incrementarFN();
            }),
        FloatingActionButton(
            child: const Icon(Icons.restart_alt),
            onPressed: () {
              resetearFN();
            }),
        FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {
              decrementarFN();
            }),
      ],
    );
  }
}
