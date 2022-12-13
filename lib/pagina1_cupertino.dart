import 'package:flutter/cupertino.dart';
import 'package:flutter11/fila.dart';
import 'package:flutter11/fila_cupertino.dart';
import 'package:flutter11/widgetsfila/filatarjeta.dart';

class Pagina1Cupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(leading: Text("hola")),
      child: ListView(
        children: [
          FilaCupertino("uno"),
          FilaCupertino("dos")
        ],
      ),
    );
  }
}
