import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff05fb18)),
      ),
      home: const MyHomePage(title: 'Frases do Dia'),
    );
  }

  const MyApp({super.key});
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      if(_counter >= 4)
        _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> listaTexto = [
      "Viva a vida por que é uma só",
      "Minha namorada e linda d+ e muito bunduda e lindona",
      "meu lindo é muito gostoso",
      "Viva o presente por que o passado ja passou",
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [

            Row(
              children: [Image.asset('assets/images/logo.webp')],
              mainAxisAlignment: MainAxisAlignment.spaceAround,

            ),


            Row(children: [

              if(_counter <= 0)
                const Text("Clique abaixo para gerar uma nova frase")
                else
                  Text(listaTexto[_counter]),
            ],
              mainAxisAlignment: MainAxisAlignment.spaceAround,

            ),


            Row(

              children: [
                Container(
                  child: FloatingActionButton.extended(

                    onPressed: _incrementCounter,
                    tooltip: 'Nova frase',
                    label: const Text("GERADOR DE NOVAS FRASES  "),
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            ),
          ],
        ),
      ),
    );
  }
}
