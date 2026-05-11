// Modelo que representa un elemento de la lista con imagen y categoría
class CategoriaItem {
  final String nombre;
  final String categoria; // 'alimento', 'animal', 'lugar'
  final String imagenUrl; // URL de imagen de la web
  final String descripcion;

  const CategoriaItem({
    required this.nombre,
    required this.categoria,
    required this.imagenUrl,
    required this.descripcion,
  });
}