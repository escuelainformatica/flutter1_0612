import 'package:flutter/material.dart';
import 'package:flutter11/comun/mi_aplicacion.dart';
import 'package:flutter11/fila.dart';
import 'package:flutter11/pagina/pagina1.dart';
import 'package:flutter11/pagina/pagina_listar_categoria.dart';
import 'package:flutter11/servicio/producto_rest.dart';
import 'package:flutter11/widgetsfila/fila_producto.dart';
import 'package:flutter11/widgetsfila/filatarjeta.dart';

import '../modelos/producto.dart';

class PaginaLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PaginaLogin();
  }
}

class _PaginaLogin extends State<PaginaLogin> {
  final textCorreo = TextEditingController(text: "correo@correo.com" );
  final textClave = TextEditingController(text:"abc123");
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
              onPressed: () async {
                print(textCorreo.value.text);

                MiAplicacion.token=await ProductoRest.login(textCorreo.value.text,textClave.value.text);
                if(MiAplicacion.token==null) {
                  const snackBar = SnackBar(
                    content: Text('Yay! A SnackBar!'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PaginaListarCategoria()),
                  );
                }
              },
              child: Text("aaa"))
        ],
      ),

    );
  }
}
