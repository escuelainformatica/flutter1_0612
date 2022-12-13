class Categoria {
  int? id;
  String? nombre;
  Null? icono;
  String? createdAt;
  String? updatedAt;

  Categoria({this.id, this.nombre, this.icono, this.createdAt, this.updatedAt});

  Categoria.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nombre = json['nombre'];
    icono = json['icono'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['nombre'] = nombre;
    data['icono'] = icono;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}