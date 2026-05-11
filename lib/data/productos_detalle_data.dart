import '../models/producto_detalle.dart';

// ── LISTA de productos para el Ejercicio 2 ───────────────────────────────────
const List<ProductoDetalle> productos = [
  ProductoDetalle(
    nombre: 'Auriculares Pro',
    precio: 299.99,
    descripcion:
        'Auriculares inalámbricos con cancelación de ruido activa, '
        'batería de 30 horas y sonido de alta fidelidad. Perfectos para '
        'trabajar, estudiar o disfrutar música sin distracciones.',
    imagenUrl:
        'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400',
    categoria: 'Tecnología',
  ),
  ProductoDetalle(
    nombre: 'Zapatillas Runner',
    precio: 189.90,
    descripcion:
        'Zapatillas deportivas con suela de amortiguación avanzada, '
        'ideal para correr largas distancias. Diseño ergonómico y '
        'materiales transpirables para mayor comodidad.',
    imagenUrl:
        'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=400',
    categoria: 'Deportes',
  ),
  ProductoDetalle(
    nombre: 'Mochila Urbana',
    precio: 129.50,
    descripcion:
        'Mochila resistente al agua con puerto USB integrado para '
        'cargar dispositivos. Múltiples compartimentos organizadores '
        'y correas acolchadas para mayor comodidad.',
    imagenUrl:
        'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=400',
    categoria: 'Accesorios',
  ),
];


