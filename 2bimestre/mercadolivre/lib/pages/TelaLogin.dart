import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color(0xFFfade00),
        title: Row(
          children: [Image.asset('assets/images/logo.png', height: 50)],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "Digite seu e-mail ou telefone para iniciar sessão",
              style: GoogleFonts.lato(fontSize: 23, fontWeight: .bold),
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    SizedBox(height: 10),
                    Text('E-mail ou telefone'),
                    Container(
                      width: 370,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            GestureDetector(
              child: Container(
                width: double.maxFinite,
                height: 50,
                child: Center(
                  child: Text(
                    'Continuar',
                    style: TextStyle(color: Colors.white, fontWeight: .bold),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xFF3453FA),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
              onTap: () => {
                Navigator.pushReplacementNamed(context, '/segundatela'),
              },
            ),

            SizedBox(height: 30),
            Text('Criar conta', style: TextStyle(color: Colors.blue)),
            SizedBox(height: 30),
            Stack(
              alignment: .center,
              children: [
                Divider(height: 1, color: Colors.grey),
                Container(
                  color: Colors.white,
                  width: 30,
                  child: Center(child: Text('ou')),
                ),
              ],
            ),
            SizedBox(height: 30),
            GestureDetector(
              child: Container(
                width: .maxFinite,
                height: 50,
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Image.asset('assets/images/logogoogle.png', height: 25),
                    Container(
                      width: 300,
                      child: Center(
                        child: Text(
                          'Fazer login com Google',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: .bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
            ),
            SizedBox(height: 150),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: const Offset(0.0, 0.9),
                    blurRadius: 0.9,
                    spreadRadius: 0.1,
                  ),
                ],
              ),
              width: 374,
              height: 51,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.security),
                  Text('tenho um problema de segurança'),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: .maxFinite,
              child: Center(
                child: Text(
                  'Precisa de ajuda',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: .bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
