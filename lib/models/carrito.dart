  class Carrito {
    final int id;
    final String titulo;
    final double precio;
    final double cantidad;
    final double total;
    final double descuentoporcentaje;
    final double descuentototal;
    final String img;

const Carrito ({
  required this.id,
  required this.titulo,
  required this.precio,
  required this.cantidad,
  required this.total,
  required this.descuentoporcentaje,
  required this.descuentototal,
  required this.img
});

factory Carrito.fromJson(Map<String,dynamic>json){
  return Carrito(
    id: json ['id'],
     titulo:json ['title'], 
     precio:(json ['price'] as num).toDouble(), 
     cantidad:(json ['quantity'] as num).toDouble(), 
     total: (json ['total'] as num).toDouble(), 
     descuentoporcentaje: (json ['discountPercentage'] as num).toDouble(), 
     descuentototal: (json ['discountedTotal'] as num).toDouble(), 
     img: json ['thumbnail']
     );
 }
}