import 'package:flutter/material.dart';
import 'package:flutter11/fila.dart';

class Pagina1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hola")),
      body: ListView(
        children: [
          Fila("uno"),
          Fila("dos"),
          Text("hola mundo"),
          Text("hola mundo"),
        ],
      ),
    );
  }
}