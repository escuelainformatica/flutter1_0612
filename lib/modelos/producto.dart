import 'categoria.dart';

class Producto {
  int? id;
  String? nombre;
  int? precio;
  int? descuento;
  String? unidad;
  int? stock;
  String? imagen;
  int? categoriaId;
  String? createdAt;
  String? updatedAt;
  Categoria? categoria;

  Producto(
      {this.id,
        this.nombre,
        this.precio,
        this.descuento,
        this.unidad,
        this.stock,
        this.imagen,
        this.categoriaId,
        this.createdAt,
        this.updatedAt,
        this.categoria});

  Producto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nombre = json['nombre'];
    precio = json['precio'];
    descuento = json['descuento'];
    unidad = json['unidad'];
    stock = json['stock'];
    imagen = json['imagen'];
    categoriaId = json['categoria_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    categoria = json['categoria'] != null
        ? new Categoria.fromJson(json['categoria'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['nombre'] = nombre;
    data['precio'] = precio;
    data['descuento'] = descuento;
    data['unidad'] = unidad;
    data['stock'] = stock;
    data['imagen'] = imagen;
    data['categoria_id'] = categoriaId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (categoria != null) {
      data['categoria'] = categoria!.toJson();
    }
    return data;
  }
}