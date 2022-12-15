import 'package:flutter/material.dart';
import 'package:flutter11/fila.dart';
import 'package:flutter11/modelos/categoria.dart';
import 'package:flutter11/servicio/categoria_rest.dart';
import 'package:flutter11/servicio/producto_rest.dart';
import 'package:flutter11/widgetsfila/fila_categoria.dart';
import 'package:flutter11/widgetsfila/fila_producto.dart';
import 'package:flutter11/widgetsfila/filatarjeta.dart';

import '../modelos/producto.dart';

class PaginaListarCategoria extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PaginaListarCategoria();
  }
}

class _PaginaListarCategoria extends State<PaginaListarCategoria> {
  List<Categoria> categorias=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hola")),
      bottomNavigationBar: ElevatedButton(
          onPressed: () async {
            categorias=await CategoriaRest.leer();
            setState(() { }); // que hay que dibujar la pagina

          },
          child: Text("prueba")),
      body: ListView.builder(
          itemCount: categorias.length,
          itemBuilder: (contexto, fila) {
            if(fila==1) {
              return FilaTarjeta();
            }
            Categoria cat=categorias[fila];
            return FilaCategoria(cat);
          }),
    );
  }
}
