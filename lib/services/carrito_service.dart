/*ejercicio de estudio profe*/
import 'dart:convert';

import 'package:resetass_app/models/carrito.dart';
import 'package:http/http.dart' as http;
class CarritoService {
  static const String _baseURL = "https://dummyjson.com/carts";

  Future <List<Carrito>> obtenerCarrito() async{
  final Uri url =Uri.parse(_baseURL);
  final http.Response respuesta = await http.get(url);

if(respuesta.statusCode==200){
   final Map<String,dynamic> datos= jsonDecode(respuesta.body);

   final List<dynamic> listaCart = datos ['carts'];
   return listaCart
   .map((cartjson) => Carrito.fromJson(cartjson))
   .toList();
}else{
throw Exception("Error al obtener el servicio ${respuesta.statusCode}");
}
  }
}