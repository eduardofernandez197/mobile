import 'package:flutter/material.dart';
import 'package:mercadolivre/pages/TelaLogin.dart';
import 'package:mercadolivre/pages/segundatela.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => TelaLogin(),
        '/segundatela': (context) => segundatela(),
      },
    );
  }
}
