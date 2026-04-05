import 'package:flutter/material.dart';
import 'tela02.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cadastro de Usuário',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigoAccent),
      ),
      home: const MyHomePage(title: 'Cadastro de Usuário'),
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

  final TextEditingController nomeController = TextEditingController();
  final TextEditingController idadeController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  String? genero;
  bool termos = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.from(alpha: 10, red: 10, green: 10, blue: 10),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Cadastro de Usuário'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Text(
                "Preencha os campos abaixo",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),

              const SizedBox(height: 40),

              SizedBox(
                width: 300,
                child: TextField(
                  controller: nomeController,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: "Nome",
                    hintText: "Digite seu nome",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    contentPadding: const EdgeInsets.all(12),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: 300,
                child: TextField(
                  controller: idadeController,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: "Idade",
                    hintText: "Digite sua idade",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    contentPadding: const EdgeInsets.all(12),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: 300,
                child: TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    labelText: "E-mail",
                    hintText: "Digite seu email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    contentPadding: const EdgeInsets.all(12),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: 300,
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: "Gênero",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  value: genero,
                  items: const [
                    DropdownMenuItem(value: "Masculino", child: Text("Masculino")),
                    DropdownMenuItem(value: "Feminino", child: Text("Feminino")),
                  ],
                  onChanged: (valor) {
                    setState(() {
                      genero = valor;
                    });
                  },
                ),
              ),

              CheckboxListTile(
                title: const Text("Aceito os termos de uso"),
                value: termos,
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (bool? valor) {
                  setState(() {
                    termos = valor ?? false;
                  });
                },
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {

                  String nome = nomeController.text;
                  String idadeTexto = idadeController.text;
                  String email = emailController.text;

                  if (nome.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Nome não pode ser vazio")),
                    );
                    return;
                  }

                  if (idadeTexto.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Idade não pode ser vazia")),
                    );
                    return;
                  }

                  int idade;

                  try {
                    idade = int.parse(idadeTexto);
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Idade deve ser um número")),
                    );
                    return;
                  }

                  if (idade < 18) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Deve ser maior ou igual a 18")),
                    );
                    return;
                  }

                  if (email.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Email não pode ser vazio")),
                    );
                    return;
                  }

                  if (!email.contains("@") || !email.contains(".")) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Email inválido")),
                    );
                    return;
                  }

                  if (genero == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Selecione o gênero")),
                    );
                    return;
                  }

                  if (!termos) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Aceite os termos de uso")),
                    );
                    return;
                  }

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Tela02(
                        nome: nome,
                        idade: idade,
                        email: email,
                        genero: genero!,
                        termos: termos,
                      ),
                    ),
                  );
                },
                child: const Text("Cadastrar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}