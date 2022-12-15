import 'dart:convert' as convert;

import 'package:flutter11/comun/mi_aplicacion.dart';
import 'package:flutter11/modelos/categoria.dart';
import 'package:flutter11/modelos/producto.dart';
import 'package:http/http.dart' as http;

class CategoriaRest {

  static Future<List<Categoria>> leer() async {
    //http://127.0.0.1:8000/api/listar
    var url = Uri.http('127.0.0.1:8000', '/api/categoria', {});

    var headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer ${MiAplicacion.token??''}'
    };

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url,headers: headers);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body) as List;
      dynamic dato=jsonResponse.map((e) => Categoria.fromJson(e)).toList();
      return dato;
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
    return [];
  }

  static Future<String?> insertar(Categoria cat) async {
    var headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    };
    var url = Uri.http('127.0.0.1:8000', '/api/categoria', {});
    String cuerpo =  convert.jsonEncode(cat.toJson());
    var respuesta=await http.post(url,headers:headers,body:cuerpo);
    if (respuesta.statusCode == 200) {
      var mapa=convert.jsonDecode(respuesta.body); //Map<String,dynamic>
      return mapa['message'];
      //print(mapa);
    }
    else {
      return null;
    }
    return null;

  }


}