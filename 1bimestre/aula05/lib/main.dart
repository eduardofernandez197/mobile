import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final TextEditingController _dataController = TextEditingController();
  String? genero;
  bool termos = false;
  bool notificacoes = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meu App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 300,
              child: const TextField(
                decoration: InputDecoration(
                  label: Text("Nome"),
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Container(
              width: 300,
              child: const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text("Idade"),
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Container(
              width: 300,
              child: TextField(

                controller: _dataController,
                readOnly: true,
                onTap: () async {

                  DateTime? escolhida = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );


                  if (escolhida != null) {
                    setState(() {
                      _dataController.text =
                      "${escolhida.day}/${escolhida.month}/${escolhida.year}";
                    });
                  }
                },
                decoration: const InputDecoration(
                  label: Text("Data"),
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.calendar_month),
                ),
              ),
            ),
            Container(
              width: 300,
              child: DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  label: Text("Gênero"),
                  border: OutlineInputBorder(),
                ),
                value: genero,
                items:const [
                  DropdownMenuItem(value: "Masculino", child: Text("Masculino")),
                DropdownMenuItem(value: "Feminino", child: Text("Feminino")),
                ],
                onChanged: (valor){
                  setState(() {
                    genero = valor;
                  });
                },
              )
            ),
            Container(
              child: CheckboxListTile(
                  title: const Text("Aceito os termos deste site"),
              value: termos,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool? valor){
                  setState(() {
                    termos = valor ?? false;

                  });
              }
              ),
              ),
            Container(
              child: SwitchListTile(
                title: const Text("Aceita receber as notificações do site?"),
                subtitle: const Text("Aceita receber notificações do Patrick"),
                secondary: const Icon(Icons.notifications_active),
                value: notificacoes,
                onChanged: (bool valor){
                  setState(() {
                    notificacoes = valor;
                  });
                }
              ),
            )
          ],
        ),
      ),
    );
  }
}