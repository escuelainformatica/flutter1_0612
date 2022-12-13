import 'package:flutter/material.dart';

class FilaTarjeta extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FilaTarjetaEstado();
  }
}
// hola
class FilaTarjetaEstado extends State<FilaTarjeta> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: const Card(
        child: ListTile(
          leading: Icon(Icons.home),
          trailing: Icon(Icons.more_vert),
          title: Text("hola"),
          subtitle: Text("mundo"),
        ),
      ),
    );
  }

}