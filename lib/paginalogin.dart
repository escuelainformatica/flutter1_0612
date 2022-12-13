import 'package:flutter/material.dart';
import 'package:flutter11/fila.dart';
import 'package:flutter11/pagina1.dart';
import 'package:flutter11/servicio/producto_rest.dart';
import 'package:flutter11/widgetsfila/fila_producto.dart';
import 'package:flutter11/widgetsfila/filatarjeta.dart';

import 'modelos/producto.dart';

class PaginaLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PaginaLogin();
  }
}

class _PaginaLogin extends State<PaginaLogin> {
  final textCorreo = TextEditingController();
  final textClave = TextEditingController();
  List<Producto> productos=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hola")),
      body: ListView(
        children: [
          TextFormField(controller: textCorreo),
          TextFormField(controller: textClave),
          ElevatedButton(
              onPressed: () {
                print(textCorreo.value.text);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pagina1()),
                );
              },
              child: Text("aaa"))
        ],
      ),

    );
  }
}
