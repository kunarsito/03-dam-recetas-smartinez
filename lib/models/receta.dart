class Receta {
  final int id;
  final String nombre;
  final List<String> ingredientes;
  final List<String> instrucciones;
  final int tiempoPreparacion;
  final int timepoCoccion;
  final int porciones;
  final int calorias;
   final String imagenUrl;
   final double calificacion;

const Receta ({
  required this.id,
 required this.nombre,
  required this.ingredientes, 
  required this.instrucciones, 
  required this.tiempoPreparacion, 
  required this.calificacion, 
  required this.calorias, 
  required this.imagenUrl, 
  required this.porciones, 
  required this.timepoCoccion });

  factory Receta.fromJson(Map<String, dynamic> json){
    return Receta(
                 id:json['id'],
                 nombre:json['name'],
                 ingredientes: List<String>.from(json['ingredients']),
                 instrucciones: List<String>.from(json['instrcutions']),
                 tiempoPreparacion: json['prepTimeMinutes'],
                 timepoCoccion: json['cookMinutes'],
                 porciones: json['servings'],
                 calorias: json['caloriesPerServing'],
                 imagenUrl: json['image'],
                 calificacion: (json['rating'] as num).toDouble(),




    );
  }

  int get tiempoTotal => tiempoPreparacion+timepoCoccion;
}