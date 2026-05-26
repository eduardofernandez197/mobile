import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String valorTela = 'Clique aqui abaixo para gerar uma frase!';

  void alterarFrase() {
    var lista = [
      "O sucesso é a soma de pequenos esforços diários.",
      "A persistência é o caminho do êxito.",
      "Aprender nunca é demais.",
      "A prática leva à perfeição.",
      "Grandes jornadas começam com um pequeno passo.",
      "A disciplina é a ponte entre metas e realizações.",
      "O conhecimento é poder.",
      "A paciência é a chave para grandes conquistas.",
      "Cada erro é uma oportunidade de aprendizado.",
      "A motivação é o que te faz começar.",
      "A constância é o que te faz continuar.",
      "O tempo é o recurso mais valioso que temos.",
      "A criatividade é a inteligência se divertindo.",
      "Sonhar grande dá o mesmo trabalho que sonhar pequeno.",
      "A gratidão transforma o que temos em suficiente.",
      "A coragem é a resistência ao medo.",
      "O foco é a arte de dizer não.",
      "A humildade é a base de toda virtude.",
      "A ação é a chave fundamental para todo sucesso.",
      "A determinação supera qualquer obstáculo.",
    ];
    Random random = new Random();
    setState(() {
      valorTela = lista[random.nextInt(lista.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4CAF50),
        title: Text('Frases do dia'),
      ),
      body: Center(
        child: Padding(
          padding: .all(20),
          child: Column(
            mainAxisAlignment: .spaceAround,
            children: [
              GestureDetector(
                child: Image.asset('images/logo.png'),
                onLongPress: ()=>{
                  setState(() {
                    valorTela = 'Gere novamente';
                  })
                },
                onTap: alterarFrase,
              ),
              Text(
                '$valorTela',
                style: TextStyle(fontSize: 25, fontStyle: .italic),
              ),
              ElevatedButton(
                onPressed: alterarFrase,
                child: Text(
                  'Nova frase',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: .bold,
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String valorTela = 'Clique aqui abaixo para gerar uma frase!';

  void alterarFrase() {
    var lista = [
      "O sucesso é a soma de pequenos esforços diários.",
      "A persistência é o caminho do êxito.",
      "Aprender nunca é demais.",
      "A prática leva à perfeição.",
      "Grandes jornadas começam com um pequeno passo.",
      "A disciplina é a ponte entre metas e realizações.",
      "O conhecimento é poder.",
      "A paciência é a chave para grandes conquistas.",
      "Cada erro é uma oportunidade de aprendizado.",
      "A motivação é o que te faz começar.",
      "A constância é o que te faz continuar.",
      "O tempo é o recurso mais valioso que temos.",
      "A criatividade é a inteligência se divertindo.",
      "Sonhar grande dá o mesmo trabalho que sonhar pequeno.",
      "A gratidão transforma o que temos em suficiente.",
      "A coragem é a resistência ao medo.",
      "O foco é a arte de dizer não.",
      "A humildade é a base de toda virtude.",
      "A ação é a chave fundamental para todo sucesso.",
      "A determinação supera qualquer obstáculo.",
    ];
    Random random = new Random();
    setState(() {
      valorTela = lista[random.nextInt(lista.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4CAF50),
        title: Text('Frases do dia'),
      ),
      body: Center(
        child: Padding(
          padding: .all(20),
          child: Column(
            mainAxisAlignment: .spaceAround,
            children: [
              GestureDetector(
                child: Image.asset('images/logo.png'),
                onLongPress: ()=>{
                  setState(() {
                    valorTela = 'Gere novamente';
                  })
                },
                onTap: alterarFrase,
              ),
              Text(
                '$valorTela',
                style: TextStyle(fontSize: 25, fontStyle: .italic),
              ),
              ElevatedButton(
                onPressed: alterarFrase,
                child: Text(
                  'Nova frase',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: .bold,
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}