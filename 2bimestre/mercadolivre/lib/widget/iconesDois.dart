import 'package:flutter/material.dart';

Widget IconesDois(
  @required String image,
  @required String texto,
  @required String textoDois,
  @required String textoBotao,
  @required VoidCallback funcao,
) {
  return Container(
    height: 194,
    width: 132,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: .circular(20),
      border: Border.all(color: Colors.grey),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        children: [
          SizedBox(height: 3),
          Image.asset(image, width: 120, height: 94),
          Text(
            texto,
            textAlign: .center,
            style: TextStyle(
              color: Color(0xFF3B89F4),
              fontSize: 12,
              fontWeight: .bold,
            ),
          ),
          ElevatedButton(onPressed: funcao, child: Text(textoBotao)),
        ],
      ),
    ),
  );
}
