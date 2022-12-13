import 'package:flutter/material.dart';
import 'package:flutter11/fila.dart';
import 'package:flutter11/servicio/producto_rest.dart';
import 'package:flutter11/widgetsfila/fila_producto.dart';
import 'package:flutter11/widgetsfila/filatarjeta.dart';

import 'modelos/producto.dart';

class Pagina1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Pagina1Estado();
  }
}

class _Pagina1Estado extends State<Pagina1> {
  List<Producto> productos=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hola")),
      bottomNavigationBar: ElevatedButton(
          onPressed: () async {
            productos=await ProductoRest.leer();
            setState(() { }); // que hay que dibujar la pagina

          },
          child: Text("prueba")),
      body: ListView.builder(
          itemCount: productos.length,
          itemBuilder: (contexto, fila) {
              Producto prod=productos[fila];
              return FilaProducto(prod);
        }),
    );
  }
}
