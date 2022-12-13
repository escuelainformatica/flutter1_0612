import 'dart:convert' as convert;

import 'package:flutter11/modelos/producto.dart';
import 'package:http/http.dart' as http;

class ProductoRest {

  static Future<List<Producto>> leer() async {
    //http://127.0.0.1:8000/api/listar
    var url = Uri.http('127.0.0.1:8000', '/api/listar', {});

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body) as List;
      dynamic dato=jsonResponse.map((e) => Producto.fromJson(e)).toList();
      return dato;
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
    return [];
  }

}