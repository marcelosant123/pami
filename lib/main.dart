import 'package:flutter/material.dart';

//o metodo main é onde toda a aplicação em dart começa
void main() => runApp(const Aplicacao());

//classe aplicação, responsavel por gerenciar todo o nosso app
class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    //MaterialApp é responsavel por gerenciar e estabelecer padroes
    //para todos as telas do app. nele temos:
    //configurações de tela
    //estilos a serem aplicados na tela (via  tema)
    //toda estruturação de tela baseada no material (material.io)
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const HomePage(),
    );
  }
}

//class que representa a tela do aplicativo com todo o seu layout

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Text("Resumo do Pedido", style: textTheme.headlineLarge),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: const Text("1x"),
                ),
                const Expanded(child: Text("Banana")),
                const Text("2,80"),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: const Text("2x"),
                ),
                const Expanded(child: Text("Morango")),
                const Text("8,90"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
