import 'package:flutter/material.dart';
import 'package:flutter11/modelos/producto.dart';

class FilaProducto extends StatefulWidget {
  Producto producto;

  FilaProducto(this.producto);

  @override
  State<StatefulWidget> createState() {
    return _FilaProducto();
  }
}

class _FilaProducto extends State<FilaProducto> {
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
                widget.producto.categoria!.nombre!.substring(0,1).toUpperCase(),
                style: const TextStyle(color: Colors.black),
              ),
            ),
          ),
          trailing: const Icon(Icons.more_vert),
          title: Text(widget.producto.nombre??'sin nombre'),
          subtitle: Text((widget.producto.precio??0).toString()),

        ),
      ),
    );
  }
}
