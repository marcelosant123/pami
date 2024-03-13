import 'package:flutter/material.dart';

void main() => runApp(Aplicacao());

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Nome: Marcelo R Santos"),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Meu Filme Preferido é:"),
                Center(
                  child: Text("A Volta dos que não Foram!!!"),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Minha Comida Preferida é:"),
                Center(
                  child: Text("Churasco"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("2H3"),
                Text("Matão"),
                Text("2024"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
