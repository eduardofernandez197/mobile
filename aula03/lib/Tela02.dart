import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tela02 extends StatelessWidget {
  final String resultado;
  final String boot;
  final String jogador;


  const Tela02({
    super.key,
    required this.resultado,
    required this.boot,
    required this.jogador,

  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Pedra, Papel, Tesoura'),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),

      ),
      body: Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [Image.asset('assets/images/${boot}.png'),
                SizedBox(height: 10),
                Text(
                  "Escolha do APP",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),


            Column(
              children: [Image.asset('assets/images/${jogador}.png'),
                Text(
                  "Sua escolha",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
             children: [
               Image.asset(
                resultado == "Jogador venceu"
                    ?"assets/images/vitoria.png"
                    :(resultado == "Boot venceu"
                    ?"assets/images/perdeu.png"
                :"assets/images/aperto-de-mãos.png"),
                 width: 150,
                 height: 150,
                 fit: BoxFit.contain,
              )
              ]
            ),


            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 18,
                ),
              ), onPressed: () {
                Navigator.pop(context);
            }, child: const Text('Jogar Novamente'),


            ),
          ],
        ),
      ),
    );
  }
}

