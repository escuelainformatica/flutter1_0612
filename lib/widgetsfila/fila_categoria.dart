import 'package:flutter/material.dart';
import 'package:flutter11/modelos/categoria.dart';
import 'package:flutter11/modelos/producto.dart';

class FilaCategoria extends StatefulWidget {
  Categoria cat;

  FilaCategoria(this.cat);

  @override
  State<StatefulWidget> createState() {
    return _FilaCategoria();
  }
}

class _FilaCategoria extends State<FilaCategoria> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Center(
              child: Text(
                widget.cat.nombre!.substring(0,1).toUpperCase(),
                style: const TextStyle(color: Colors.black),
              ),
            ),
          ),
          trailing: const Icon(Icons.more_vert),
          title: Text(widget.cat.nombre??'sin nombre')

        ),
      ),
    );
  }
}
