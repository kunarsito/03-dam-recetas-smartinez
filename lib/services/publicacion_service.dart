/*ejercicio de estudio profe*/

import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/postes.dart'; // Importación relativa directa

class PostService {
  static const String _baseUrl = "https://dummyjson.com/posts";

  /// Obtiene la lista completa de publicaciones desde la API.
  Future<List<Publicacion>> obtenerPublicaciones() async {
    final Uri url = Uri.parse(_baseUrl);
    final http.Response respuesta = await http.get(url);

    if (respuesta.statusCode == 200) {
      final Map<String, dynamic> datos = jsonDecode(respuesta.body);
      final List<dynamic> listaPosts = datos['posts'];

      // Mapea cada JSON utilizando Publicacion.fromJson
      // (el cual internamente invoca a Reacciones.fromJson)
      return listaPosts
          .map((postJson) => Publicacion.fromJson(postJson))
          .toList();
    } else {
      throw Exception(
        "Error al obtener las publicaciones: ${respuesta.statusCode}",
      );
    }
  }

  /// Obtiene una publicación individual por su ID.
  Future<Publicacion> obtenerPublicacionPorId(int id) async {
    final Uri url = Uri.parse('$_baseUrl/$id');
    final http.Response respuesta = await http.get(url);

    if (respuesta.statusCode == 200) {
      final Map<String, dynamic> datos = jsonDecode(respuesta.body);
      return Publicacion.fromJson(datos);
    } else {
      throw Exception("Error al obtener la publicación $id: ${respuesta.statusCode}");
    }
  }
}