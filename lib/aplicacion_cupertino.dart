import 'package:flutter/cupertino.dart';
import 'package:flutter11/pagina/pagina1.dart';
import 'package:flutter11/pagina/pagina1_cupertino.dart';


class AplicacionCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return CupertinoApp(
      title: "hola mundo2222",
      home: Pagina1Cupertino(),
    );
  }

}