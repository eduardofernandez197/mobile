import 'dart:convert';

import 'package:aula06/usuarioDto/usuarioDto.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
var nomeRetornado = '';
var lista= [];
var zipCode = '';

TextEditingController texto = new TextEditingController();
 void mostrarApi() async{
    var resposta  = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if(resposta.statusCode==200){
      lista = jsonDecode(resposta.body) as List;
      Usuariodto usuario = Usuariodto.fromJson(lista[int.parse(texto.text)]);
      setState(() {
        nomeRetornado = usuario.nome;
        zipCode = usuario.zipcode;
      });
    }



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child:Column(
          children: [
        TextField(
          controller: texto,
          decoration: InputDecoration(
            hint: Text('Selecione o usuário'),
          )
        ),
            Text(nomeRetornado, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ElevatedButton(onPressed: mostrarApi, child: Text('Chamar API'))
      ],
        ),
      ),
    );
  }
}