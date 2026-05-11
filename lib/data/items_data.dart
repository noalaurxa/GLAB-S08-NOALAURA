import '../models/categoria_item.dart';

// ── LISTA de elementos con imágenes de la web ────────────────────────────────
// Se usa una List<CategoriaItem> para agrupar todos los elementos.
// Las imágenes provienen de URLs públicas (picsum, unsplash, etc.)

const List<CategoriaItem> todosLosItems = [

  // ── ALIMENTOS ───────────────────────────────────────────────────────────────
  CategoriaItem(
    nombre: 'Pizza Margherita',
    categoria: 'alimento',
    imagenUrl: 'https://images.unsplash.com/photo-1574071318508-1cdbab80d002?w=300',
    descripcion: 'Clásica pizza italiana con tomate y mozzarella.',
  ),
  CategoriaItem(
    nombre: 'Sushi',
    categoria: 'alimento',
    imagenUrl: 'https://images.unsplash.com/photo-1579871494447-9811cf80d66c?w=300',
    descripcion: 'Rollos de arroz con pescado fresco japonés.',
  ),
  CategoriaItem(
    nombre: 'Tacos',
    categoria: 'alimento',
    imagenUrl: 'https://images.unsplash.com/photo-1565299585323-38d6b0865b47?w=300',
    descripcion: 'Tortillas de maíz con carne y vegetales frescos.',
  ),

  // ── ANIMALES ────────────────────────────────────────────────────────────────
  CategoriaItem(
    nombre: 'León',
    categoria: 'animal',
    imagenUrl: 'https://images.unsplash.com/photo-1546182990-dffeafbe841d?w=300',
    descripcion: 'El rey de la selva, felino más grande de África.',
  ),
  CategoriaItem(
    nombre: 'Delfín',
    categoria: 'animal',
    imagenUrl: 'https://images.unsplash.com/photo-1607153333879-c174d265f1d2?w=300',
    descripcion: 'Mamífero marino inteligente y sociable.',
  ),
  CategoriaItem(
    nombre: 'Águila',
    categoria: 'animal',
    imagenUrl: 'https://images.unsplash.com/photo-1611689342806-0863700ce1e4?w=300',
    descripcion: 'Ave rapaz de gran envergadura y aguda visión.',
  ),

  // ── LUGARES ─────────────────────────────────────────────────────────────────
  CategoriaItem(
    nombre: 'Machu Picchu',
    categoria: 'lugar',
    imagenUrl: 'https://images.unsplash.com/photo-1587595431973-160d0d94add1?w=300',
    descripcion: 'Ciudad inca ubicada en los Andes del Perú.',
  ),
  CategoriaItem(
    nombre: 'París',
    categoria: 'lugar',
    imagenUrl: 'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=300',
    descripcion: 'Capital de Francia, hogar de la Torre Eiffel.',
  ),
  CategoriaItem(
    nombre: 'Tokio',
    categoria: 'lugar',
    imagenUrl: 'https://images.unsplash.com/photo-1540959733332-eab4deabeeaf?w=300',
    descripcion: 'Metrópoli japonesa que mezcla tradición y modernidad.',
  ),
];