import 'package:flutter/material.dart';

Widget Icones(@required String titulo, @required String image) {
  return Column(
    children: [
      Container(
        height: 64,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1000),
          color: Colors.white,
          border: .all(color: Colors.black),
        ),
        child: Image.asset(image, height: 20, width: 20),
      ),
      Text(titulo, style: TextStyle(fontSize: 11)),
    ],
  );
}
