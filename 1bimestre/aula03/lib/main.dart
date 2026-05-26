import 'dart:math';
import 'Tela02.dart';
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
      title: 'Jokenpoh',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Pedra Papel Tesoura'),
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
  String jogador = "";
  String boot = "";
  String resultado = "";

  List<String> opcoes = ["pedra","papel","tesoura"];

  void jogar (String escolhaUsuario){
    jogador = escolhaUsuario;

    Random random = new Random();
    int numero = random.nextInt(3);
    boot = opcoes[numero];

    if(jogador == boot){
      resultado = "Empate";
    }
    else if(
        (jogador == "pedra" && boot == "tesoura") ||
        (jogador == "tesoura" && boot =="papel") ||
        (jogador == "papel" && boot =="pedra")
    ){
      resultado = "Jogador venceu";
    }
    else{
      resultado = "Boot venceu";
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title:Text('Pedra, Papel, Tesoura'),
        titleTextStyle:TextStyle(
          color:Colors.white,
          fontSize: 20,
          fontWeight:FontWeight.bold,
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          Column(
            children: [
              Image.asset('assets/images/padrao.png'),
              SizedBox(height: 10),
              Text(
                "Escolha do APP",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  jogar("pedra");
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Tela02(
                      resultado: resultado,
                      boot: boot,
                      jogador: jogador,
                    ),
                    ),
                  );
                },
                child: Image.asset('assets/images/pedra.png', width: 100),

              ),
              GestureDetector(
                onTap: () {
                  jogar("papel");
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Tela02(
                      resultado: resultado,
                      boot: boot,
                      jogador: jogador,

                    ),
                  ),
                  );
                  },
                child: Image.asset('assets/images/papel.png', width: 100),
              ),
              GestureDetector(

                onTap: () { jogar("tesoura");
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Tela02(
                    resultado: resultado,
                    boot: boot,
                    jogador: jogador,
                  ),
                   ),
                  );
                },
                child: Image.asset('assets/images/tesoura.png', width: 100),
              ),
            ],
          ),

        ],
      ),
    );
  }
}