class Publicacion{
  final int id;
  final String titulo;
  final String contenido;
  final List<String> etiquetas;
  final int likes;
  final int dislikes;
  final int vistas;
  final int usuario;

 const Publicacion({
   required this.id,
   required this.titulo,
   required this.contenido,
   required this.etiquetas,
   required this.likes,
   required this.dislikes,
   required this.vistas,
   required this.usuario
 }); 

factory Publicacion.fromJson(Map<String,dynamic>json){
  final reacciones = json['reactions'] as Map<String, dynamic>?;
  return Publicacion(
    id: json['id'], 
    titulo:json['title'], 
    contenido: json['body'], 
    etiquetas: List<String>.from(json['tags']) ,
     likes: reacciones?['likes'] ?? 0,
     dislikes: reacciones?['dislikes'] ?? 0,
     vistas: json['views'], 
     usuario: json['userId']
     );
}
}


