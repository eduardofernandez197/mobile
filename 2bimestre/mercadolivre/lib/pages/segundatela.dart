import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mercadolivre/widget/iconesPrincipal.dart';
import 'package:mercadolivre/widget/iconesDois.dart';

class segundatela extends StatefulWidget {
  const segundatela({super.key});

  @override
  State<segundatela> createState() => _segundatelaState();
}

class _segundatelaState extends State<segundatela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFCF60F),
        title: Container(
          child: Row(
            children: [
              Container(
                width: 330,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    prefixIcon: Icon(Icons.search),
                    hint: Text(
                      'Buscar no Mercado livre',
                      style: GoogleFonts.lato(
                        fontSize: 15,
                        fontWeight: .bold,
                        color: Color(0xFF9A9A9A),
                      ),
                    ),
                    fillColor: Colors.white,
                    border: OutlineInputBorder(borderRadius: .circular(25)),
                  ),
                ),
              ),
              SizedBox(width: 16),
              Icon(Icons.shopping_cart_outlined),
            ],
          ),
        ),
      ),
      body: Container(
        width: .maxFinite,
        height: .maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: .topCenter,
            end: .bottomCenter,
            stops: [0.2, 0.40],
            colors: [Color(0xFFFCF60F), Color(0xFFF5F5EA)],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 14),
              Row(
                children: [
                  Icon(Icons.location_on),
                  Text("Rua Dercidoneo Grigrio, N-484"),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
              Center(
                child: Container(
                  height: 210,
                  width: 355,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFFFF3F3),
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Row(
                  spacing: 15,
                  children: [
                    Icones('teste', 'assets/images/descontFundo.png'),
                    Icones('teste1', 'assets/images/cupom.png'),
                    Icones('teste1', 'assets/images/cupom.png'),
                    Icones('teste1', 'assets/images/cupom.png'),
                    Icones('teste1', 'assets/images/cupom.png'),
                  ],
                ),
                scrollDirection: .horizontal,
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                child: Row(
                  children: [
                    IconesDois(
                      'https://marketplace.canva.com/sIwb8/MACJZ1sIwb8/2/tl/canva-dollar-icon-MACJZ1sIwb8.png',
                      'Menor que R\$40.000',
                      'Descubraprodutos com desconto',
                      'Mostrar produtos',
                      () => {},
                    ),
                    IconesDois(
                      'https://marketplace.canva.com/sIwb8/MACJZ1sIwb8/2/tl/canva-dollar-icon-MACJZ1sIwb8.png',
                      'Menor que R\$40.000',
                      'Descubraprodutos com desconto',
                      'Mostrar produtos',
                      () => {},
                    ),
                    IconesDois(
                      'https://marketplace.canva.com/sIwb8/MACJZ1sIwb8/2/tl/canva-dollar-icon-MACJZ1sIwb8.png',
                      'Menor que R\$40.000',
                      'Descubraprodutos com desconto',
                      'Mostrar produtos',
                      () => {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
