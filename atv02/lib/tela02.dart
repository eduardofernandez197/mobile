import 'package:flutter/material.dart';

class Tela02 extends StatelessWidget {
  final String nome;
  final int idade;
  final String email;
  final String genero;
  final bool termos;

  const Tela02({
    super.key,
    required this.nome,
    required this.idade,
    required this.email,
    required this.genero,
    required this.termos,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Confirmação"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("Nome: $nome"),
            Text("Idade: $idade"),
            Text("Email: $email"),
            Text("Gênero: $genero"),
            Text("Termos: ${termos ? "Sim" : "Não"}"),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Voltar"),
                ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Editar"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}