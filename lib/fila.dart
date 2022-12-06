import 'package:flutter/material.dart';

class Fila extends StatefulWidget {

  String texto="";
  Fila(this.texto); // constructor

  @override
  State<StatefulWidget> createState() {
    return FilaEstado();
  }


}
class FilaEstado extends State<Fila> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Text(this.widget.texto),
          Container(width: 20,),
          Text(this.widget.texto),
          Container(width: 20,),
          Text(this.widget.texto),
          Container(width: 20,),
          Text(this.widget.texto),
        ],
      ),
    );
  }

}