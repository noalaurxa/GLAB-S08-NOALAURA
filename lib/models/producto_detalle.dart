// Modelo que representa un producto con detalles para el Ejercicio 2
class ProductoDetalle {
  final String nombre;
  final double precio;
  final String descripcion;
  final String imagenUrl;
  final String categoria;

  const ProductoDetalle({
    required this.nombre,
    required this.precio,
    required this.descripcion,
    required this.imagenUrl,
    required this.categoria,
  });
}